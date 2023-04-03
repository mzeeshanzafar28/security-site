<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Plan;
use Illuminate\Http\Request;
use App\Models\subcontractorModel;
use App\Models\stafflistModel;
use App\Models\staffdocument;
use App\Models\Tab;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Response;

class stafflist extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        if (Auth::user()->parent_id == 0) {
            $data=stafflistModel::with('subcontractor')->where('user_id',Auth::id() )->orderBy('id', 'desc')->get();
        }else {
            $data=stafflistModel::with('subcontractor')->where('user_id',Auth::user()->parent_id )->orderBy('id', 'desc')->get();
        }

        return view('staff/stafflist.index',['data'=>$data, 'tab_perm'=>$tab_perm]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
        if (Auth::user()->parent_id == 0) {
            $data=subcontractorModel::where('user_id',Auth::id() )->orderBy('id', 'desc')->get();
        }else {
            $data=subcontractorModel::where('user_id',Auth::user()->parent_id )->orderBy('id', 'desc')->get();
        }

        
        return view('staff/stafflist.create', ['subcontractor'=>$data]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        //plan details and expiry date
        $plan = Plan::find(Auth::user()->user_plan);
        $sub_date = Auth::user()->subscription_date;
        $exp_date = Carbon::parse($sub_date)->addDays($plan->period);


        //module details
        if (Auth::user()->parent_id == 0) {
            $t_staffs = stafflistModel::where('user_id', Auth::id())->count();
        }else {
            $t_staffs = stafflistModel::where('user_id', Auth::user()->parent_id)->count();            
        }

        //checking subscription limit
        if ($plan->id == 1 && $plan->staff_limit <= $t_staffs) {
            session()->flash('error', 'Your maxmimum limit to Add Staffs has reached!');
            return redirect()->back();
        }

        //checking expiry date
        if ($exp_date < Carbon::now()) {
            session()->flash('error', 'Your Subscribed Plan has been Expired !');
            return redirect()->back();
        }

        $data=new stafflistModel();
        $data->staffsubcontractor_name=$request->subcontractor;
        $data->staff_companyid=$request->staffcompanyid;
        $data->staff_name=$request->staffname;
        $data->staff_email=$request->staffemail;
        $data->staff_phone=$request->staffphone;
        $data->staff_position=$request->staffposition;
        $data->staff_SIA=$request->staffSIA;
        $data->staff_SIA_expiry=$request->staffSIAexpiry;
        $data->staff_location=$request->stafflocation;
        $data->staff_payrate=$request->staffpayrate;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }


        $data->save();
        
        $desc = "Added a staff with name: $data->staff_name, id: $data->id";
        $this->activityLog('Staff', 'Added', $desc, Auth::id(), $data->user_id);
        
        return redirect('staff/stafflist/create')->with('msg','Staff has been added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=stafflistModel::find($id);
        $document_files = staffdocument::where('staff_table_id',$data->id)->get();
        // dd($document_files->toArray());
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        
        return view('staff/stafflist.show',['data'=>$data,'document_files' => $document_files]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=stafflistModel::find($id);
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }

        if (Auth::user()->parent_id == 0) {
            $subcontractor=subcontractorModel::where('user_id',Auth::id() )->orderBy('id', 'desc')->get();
        }else {
            $subcontractor=subcontractorModel::where('user_id',Auth::user()->parent_id )->orderBy('id', 'desc')->get();
        }

        
        
        return view('staff/stafflist.edit',['data'=>$data, 'subcontractor'=>$subcontractor]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data=stafflistModel::find($id);
        $data->staffsubcontractor_name=$request->subcontractor;
        $data->staff_companyid=$request->staffcompanyid;
        $data->staff_name=$request->staffname;
        $data->staff_email=$request->staffemail;
        $data->staff_phone=$request->staffphone;
        $data->staff_position=$request->staffposition;
        $data->staff_SIA=$request->staffSIA;
        $data->staff_SIA_expiry=$request->staffSIAexpiry;
        $data->staff_location=$request->stafflocation;
        $data->staff_payrate=$request->staffpayrate;
        $data->save();
        

        $desc = "Updated a staff with name: $data->staff_name, id: $data->id";

        $this->activityLog('Staff', 'Updated',$desc, Auth::id(), $data->user_id);
        
        return redirect('staff/stafflist/create')->with('msg','Staff details has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function add_documents(Request $request){
        $request->validate([
            'document_type' => 'required',
            'expiry_date' => 'required',
            'document' => 'required'
        ]);
        
        $original_name = '' ;
        if($request->hasFile('document')){
            $folder_name = 'documents';
            $original_name = str_replace('','_',$request->document->getClientOriginalName());
            $request->document->move(public_path($folder_name),$original_name);
        }
        $staff_documents = new staffdocument();
        $staff_documents->staff_table_id = $request->id_staff_list;
        $staff_documents->document_type = $request->document_type;
        $staff_documents->expiry_date = $request->expiry_date;
        $staff_documents->description = $request->information;
        $staff_documents->file_name = $original_name;
        $staff_documents->save();
        session()->flash('msg','Doucment added Succefully');
        return redirect()->back();
    }
    public function download_document($id){
        $find_file = staffdocument::where('id',$id)->first();
        $file_path = public_path('documents/'.$find_file->file_name);
        return response()->download($file_path);
    }
    public function delete_document($id){
        $find_file = staffdocument::where('id',$id)->first();
        $file_path = public_path('documents/'.$find_file->file_name);
        if(File::delete($file_path)){
            $find_file->delete();
            session()->flash('msg','Document Delete Succefully');
            return redirect()->back();
        }

    }
    
    function getData($id){
        $guard = stafflistModel::find($id);
        
        return $guard->toArray();
    }
}

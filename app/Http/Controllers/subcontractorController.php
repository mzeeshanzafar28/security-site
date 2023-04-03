<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Plan;
use App\Models\stafflistModel;
use Illuminate\Http\Request;
use App\Models\subcontractorModel;
use App\Models\Tab;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class subcontractorController extends Controller
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
            $data=subcontractorModel::where('user_id',Auth::id() )->orderBy('id', 'desc')->get();
        }else {
            $data=subcontractorModel::where('user_id',Auth::user()->parent_id )->orderBy('id', 'desc')->get();
        }

        
        return view('staff/subcontractors.index',['data'=>$data, 'tab_perm'=>$tab_perm]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('staff/subcontractors.create');
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
            $t_staffs = subcontractorModel::where('user_id', Auth::id())->count();
        }else {
            $t_staffs = subcontractorModel::where('user_id', Auth::user()->parent_id)->count();            
        }

        //checking subscription limit
        if ($plan->id == 1 && $plan->staff_limit <= $t_staffs) {
            session()->flash('error', 'Your maxmimum limit to Add SubContractor has reached!');
            return redirect()->back();
        }

        //checking expiry date
        if ($exp_date < Carbon::now()) {
            session()->flash('error', 'Your Subscribed Plan has been Expired !');
            return redirect()->back();
        }

        $data=new subcontractorModel();
        $data->subcontractor_name=$request->subcontractorname;
        $data->subcontractor_code=$request->subcontractorcode;
        $data->subcontractor_services=$request->subcontractorservices;
        $data->subcontractor_email=$request->subcontractoremail;
        $data->subcontractor_phone=$request->subcontractorphone;
        $data->subcontractor_coveragearea=$request->subcontractorcoveragearea;
        $data->subcontractor_address=$request->subcontractoraddress;
        $data->subcontractor_payrate=$request->subcontractorpayrate;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }

        $data->save();


        $desc = "Added a subcontractor with name: $data->subcontractorname, id: $data->id";
        
        $this->activityLog('Sub Contractor', 'Added', $desc, Auth::id(), $data->user_id);
        
        return redirect('staff/subcontractors/create')->with('msg','Sub-contractor has been added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=subcontractorModel::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        
        return view('staff/subcontractors.show',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=subcontractorModel::find($id);
        return view('staff/subcontractors.edit',['data'=>$data]);
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
        $data=subcontractorModel::find($id);
        $data->subcontractor_name=$request->subcontractorname;
        $data->subcontractor_code=$request->subcontractorcode;
        $data->subcontractor_services=$request->subcontractorservices;
        $data->subcontractor_email=$request->subcontractoremail;
        $data->subcontractor_phone=$request->subcontractorphone;
        $data->subcontractor_coveragearea=$request->subcontractorcoveragearea;
        $data->subcontractor_address=$request->subcontractoraddress;
        $data->subcontractor_payrate=$request->subcontractorpayrate;
        $data->save();
        

        $desc = "Updated a subcontractor with name: $data->subcontractorname, id: $data->id";
        $this->activityLog('Sub Contractor', 'Added', $desc, Auth::id(), $data->user_id);
        
        return redirect('staff/subcontractors/create')->with('msg','Sub-contractor details has been updated');
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

    public function getStaff($id)
    {
        $staffs = stafflistModel::where('staffsubcontractor_name', $id)->get();

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;
        }
        // $this->activityLog('Sub Contractor', 'Updated', Auth::id(), $account_id);

        return $staffs->toArray();
    }
}

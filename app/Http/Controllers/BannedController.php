<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\bannedofficer;
use App\Models\Permission;
use App\Models\Tab;
use Illuminate\Support\Facades\Auth;

class BannedController extends Controller
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
            $data=bannedofficer::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        }else {
            $data=bannedofficer::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }

        
        return view('banned.index',['data'=>$data, 'tab_perm'=>$tab_perm]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        return view('banned.create', get_defined_vars());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $request->validate([
            'Staff_Name'=>'required|regex:/^[\pL\s]+$/u',
            'SIA_License_Number'=>'integer|required|min:16',
            'Reason_of_Ban'=>'required',
        ]);
        
        
        
        $data=new bannedofficer();
        $data->Staff_Name=$request->Staff_Name;
        $data->SIA_License_Number=$request->SIA_License_Number;
        $data->Reason_of_Ban=$request->Reason_of_Ban;
        $data->created_at=$request->created_at;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }

        $data->save();
        $desc = "Banned a Staff with id: $data->id, name $data->Staff_Name";
        $this->activityLog('Banned Staff', 'Added', $desc, Auth::id(), $data->user_id);
        
        return redirect('banned/create')->with('msg','Staff has been added into banned list');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=bannedofficer::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        
        return view('banned.show',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=bannedofficer::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        $data=bannedofficer::find($id);
        return view('banned.edit',['data'=>$data]);
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
        $request->validate([
            'Staff_Name'=>'required|regex:/^[\pL\s]+$/u',
            'SIA_License_Number'=>'integer|required|min:16',
            'Reason_of_Ban'=>'required',
        ]);
        
        $data=bannedofficer::find($id);
        $data->Staff_Name=$request->Staff_Name;
        $data->SIA_License_Number=$request->SIA_License_Number;
        $data->Reason_of_Ban=$request->Reason_of_Ban;
        $data->created_at=$request->created_at;
        $data->save();

        $desc = "Updated a Banned Staff with id: $data->id, name $data->Staff_Name";
        $this->activityLog('Banned Staff', 'Updated',$desc, Auth::id(), $data->user_id);
        
        
        return redirect('banned/create')->with('msg','Staff has been added into banned list');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data=bannedofficer::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        bannedofficer::where('id', $id)->delete();

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;

        }


        $desc = "Updated a Banned Staff with id: $data->id, name $data->Staff_Name";

        $this->activityLog('Banned Staff', 'Deleted', $desc, Auth::id(), $account_id);

        return redirect('banned')->with('msg','Staff has been removed from banned list');
    }
}

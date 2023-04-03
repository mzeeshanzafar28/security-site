<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\activitiesoccured;
use App\Models\monitoring;
use App\Models\sites;
use App\Models\activities;
use App\Models\MonitoringStaff;
use App\Models\Permission;
use App\Models\stafflistModel;
use App\Models\Tab;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class activitiesoccuredController extends Controller
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
            $data=activitiesoccured::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        }else {
            $data=activitiesoccured::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }

        
        return view('occuredactivites.index',['data'=>$data, 'tab_perm'=>$tab_perm]);
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

        $data=activitiesoccured::orderBy('id', 'desc')->get();
        return view('occuredactivites.create', ['data'=>$data, 'tab_perm'=>$tab_perm]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'day' => 'required'
        ]);
        $monitoring = monitoring::with('site')->find($request->weekcommencing);
        // dd($monitoring);
        $shift = MonitoringStaff::where('monitoring_id', $monitoring->id)->where('shift_day', $request->day)->first();
        $staff = stafflistModel::find($shift->staff_id);
        $activtiy = activities::find($request->ActivityType);
        $data=new activitiesoccured();
        $data->sitename_id=$request->sitename;
        $data->Week_Commencing=$request->weekcommencing;
        $data->Activity_Type=$request->ActivityType;
        $data->reason_of_activity=$request->reasonofactivity;
        $data->day = $request->day;
        $data->suplier_name = $staff->staffsubcontractor_name;
        $data->supplier_guard_name = $shift->staff_id;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }
        
        $data->save();

        //saving activity log
        $desc = "Added Activity Occured on a Monitoring with Monitoring id: $monitoring->id, Site: ".$monitoring->site->sitename.", Week Commencing: $monitoring->Week_Commencing, Activity Type: $activtiy->Activity_Type";

        $this->activityLog('Complaints', 'Added',$desc, Auth::id(), $data->user_id);
        
        return back()->with('message','Operation Successful !');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=activitiesOccured::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=activitiesOccured::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
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
        $data=activitiesOccured::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data=activitiesOccured::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
    activitiesoccured::find($id)->delete();
    return back()->with('msg','activity has been removed from activity list');
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\InternalMeetingsModel;
use App\Models\Permission;
use App\Models\Plan;
use App\Models\Tab;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class InternalmeetingsController extends Controller
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
            $data=InternalMeetingsModel::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        }else {
            $data=InternalMeetingsModel::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }

        // $data=InternalMeetingsModel::orderBy('id', 'desc')->get();
        return view('meetings/internalmeetings.index',['data'=>$data, 'tab_perm'=>$tab_perm]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('meetings/internalmeetings.create');
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
            $t_meetings = InternalMeetingsModel::where('user_id', Auth::id())->count();
        }else {
            $t_meetings = InternalMeetingsModel::where('user_id', Auth::user()->parent_id)->count();            
        }

        //checking subscription limit
        if ($plan->id == 1 && $plan->meeting_limit <= $t_meetings) {
            session()->flash('error', 'Your maxmimum limit to Add Meetings has reached!');
            return redirect()->back();
        }

        //checking expiry date
        if ($exp_date < Carbon::now()) {
            session()->flash('error', 'Your Subscribed Plan has been Expired !');
            return redirect()->back();
        }
        
        $request->validate([
            'meetingdatetime'=>'required',
            'meetingattendees'=>'required|min:3|max:191',
            'meetingtitle'=>'required|min:3|max:191',
            'meetingminutes'=>'required|min:3|max:1000000',
            'meetingoutcomes'=>'required|min:3|max:1000000'
        ]);
        
        $data=new InternalMeetingsModel();
        $data->Meeting_Date_time=$request->meetingdatetime;
        $data->Meeting_attendees=$request->meetingattendees;
        $data->Meeting_Title=$request->meetingtitle;
        $data->Meeting_minutes=$request->meetingminutes;
        $data->Meeting_outcomes=$request->meetingoutcomes;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }

        $data->save();


        $desc = "Added Internal Meeting of Date: $data->Meeting_Date_Time, with Title: $data->Meeting_Title";
        
        $this->activityLog('Internal Meetings', 'Added', $desc, Auth::id(), $data->user_id);
        
        return redirect('meetings/internalmeetings/create')->with('msg','Data has been submitted');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=InternalMeetingsModel::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        
        return view('meetings/internalmeetings.show',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=InternalMeetingsModel::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        return view('meetings/internalmeetings.edit',['data'=>$data]);
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
        
        $data=InternalMeetingsModel::find($id);
        $data->Meeting_Date_time=$request->meetingdatetime;
        $data->Meeting_attendees=$request->meetingattendees;
        $data->Meeting_Title=$request->meetingtitle;
        $data->Meeting_minutes=$request->meetingminutes;
        $data->Meeting_outcomes=$request->meetingoutcomes;
        $data->save();
        
        $desc = "Updated Internal Meeting of Date: $data->Meeting_Date_Time, with Title: $data->Meeting_Title";
        $this->activityLog('Internal Meetings', 'Updated', $desc, Auth::id(), $data->user_id);
        
        return redirect('meetings/internalmeetings/create')->with('msg','Meeting Details has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = InternalMeetingsModel::find($id);
        InternalMeetingsModel::where('id', $id)->delete();

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;

        }

        $desc = "Deleted Internal Meeting of Date: $data->Meeting_Date_Time, with Title: $data->Meeting_Title";
        $this->activityLog('Internal Meetings', 'Deleted', $desc, Auth::id(), $account_id);

        return redirect('meetings/internalmeetings/')->with('msg','Meeting Detail has been deleted');
    }
}
    
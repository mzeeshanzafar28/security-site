<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\activities;
use App\Models\Plan;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class activitiesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (Auth::user()->parent_id == 0) {
            $data=activities::orderBy('id', 'desc')->where('user_id', Auth::id())->get();
        }else {
            $data=activities::orderBy('id', 'desc')->where('user_id', Auth::user()->parent_id)->get();
        }
        
        return view('activities.index',['data'=>$data]);

    }
    
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('activities.create');
        
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
        //plan details and expiry date
        $plan = Plan::find(Auth::user()->user_plan);
        $sub_date = Auth::user()->subscription_date;
        $exp_date = Carbon::parse($sub_date)->addDays($plan->period);


        //module details
        if (Auth::user()->parent_id == 0) {
            $t_activities = activities::where('user_id', Auth::id())->count();
        }else {
            $t_activities = activities::where('user_id', Auth::user()->parent_id)->count();            
        }

        //checking subscription limit
        
        if ($plan->id == 1 && $plan->activities_limit <= $t_activities) {
            session()->flash('error', 'Your maxmimum limit to Add Activities has reached!');
            return redirect()->back();
        }

        //checking expiry date
        if ($exp_date < Carbon::now()) {
            session()->flash('error', 'Your Subscribed Plan has been Expired !');
            return redirect()->back();
        }
        
        $data=new activities();
        $data->Activity_Type = $request->Activity_Type;
        $data->Activity_Weight = 0;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
            $account_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
            $account_id = Auth::user()->parent_id;
        }

        $data->save();
        
        //saving activity Log
        $desc = "Added Activity with id: $data->id, Activity Type: $data->Activity_Type";
        $this->activityLog('Activties', 'Added', $desc, Auth::id(), $account_id);

        return redirect('activities/create')->with('msg','Activity has been created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=activities::find($id);
        
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        return view('activities.show',['data'=>$data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=activities::find($id);
        
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        return view('activities.edit',['data'=>$data]);
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
        
        
        $data=activities::find($id);
        
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        $data->Activity_Type=$request->Activity_Type;
        $data->Activity_Weight=$request->Activity_Weight;
        $data->save();
        
        //saving activity log
        $desc = "Updated Activity with id: $data->id, Activity Type: $data->Activity_Type";
        $this->activityLog('Activties', 'Updated',$desc, Auth::id(), $data->user_id);

        return redirect('activities')->with('msg','Activity has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $data=activities::find($id);
        
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        $desc = "Added Activity with id: $data->id, Activity Type: $data->Activity_Type";

        activities::where('id', $id)->delete();

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;
        }
         //saving activity log
         $this->activityLog('Activties', 'Deleted', $desc, Auth::id(), $account_id);
        return redirect('activities')->with('msg','Activity has been deleted');
    }
}
    
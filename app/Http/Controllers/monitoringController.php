<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\monitoring;
use App\Models\clients;
use App\Models\sites;
use App\Models\activities;
use App\Models\activitiesoccured;
use App\Models\AssignedClient;
use App\Models\MonitoringStaff;
use App\Models\Permission;
use App\Models\Plan;
use App\Models\stafflistModel;
use App\Models\SupervisoryVisit;
use App\Models\Tab;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class monitoringController extends Controller
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
            $data=monitoring::where('user_id', Auth::id())->orderBy(DB::raw("STR_TO_DATE(Week_Commencing, '%d/%m/%Y')"), 'desc')->get();
            $weeks=monitoring::where('user_id', Auth::id())->orderBy(DB::raw("STR_TO_DATE(Week_Commencing, '%d/%m/%Y')"), 'desc')->get('Week_Commencing');
            $sites=sites::where('user_id', Auth::id())->get();
            $clients=clients::where('user_id', Auth::id())->get();
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                
 
                $data=monitoring::whereHas('site', function ($q) use($clientIds){
                    $q->whereIn('clientname_id', $clientIds);
                })->orderBy(DB::raw("STR_TO_DATE(Week_Commencing, '%d/%m/%Y')"), 'desc')->get();

                $weeks=monitoring::whereHas('site', function ($q) use ($clientIds){
                    $q->whereIn('clientname_id', $clientIds);
                })->orderBy(DB::raw("STR_TO_DATE(Week_Commencing, '%d/%m/%Y')"), 'desc')->get('Week_Commencing');

                $sites=sites::whereIn('clientname_id', $clientIds)->get();
                $clients=clients::find($clientIds);
                // dd($clients->toArray());
                $count = DB::select("SELECT count(*) as total, `sitename_id` FROM activitiesoccureds group by `sitename_id`");

                $count_totalactivity=[];
        
                foreach ($data as $row){
                    $count1=activitiesoccured::where('sitename_id', $row->sitename_id)->where('Week_Commencing', $row->id)->get();
                    $count_totalactivity[$row->id]=$count1->count();
                }
        
                return view('monitoring.index',['data'=>$data, 'count'=>$count, 'count_totalactivity'=>$count_totalactivity, 'tab_perm'=>$tab_perm, 'weeks'=>$weeks, 'clients'=>$clients, 'sites'=> $sites]);

            }

            $data=monitoring::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
            $weeks=monitoring::where('user_id', Auth::user()->parent_id)->orderBy('Week_Commencing', 'desc')->get('Week_Commencing');

            $sites=sites::where('user_id', Auth::user()->parent_id)->get();
            $clients=clients::where('user_id', Auth::user()->parent_id)->get();
        }
        
        
        $count = DB::select("SELECT count(*) as total, `sitename_id` FROM activitiesoccureds group by `sitename_id`");

        $count_totalactivity=[];

        foreach ($data as $row){
            $count1=activitiesoccured::where('sitename_id', $row->sitename_id)->where('Week_Commencing', $row->id)->get();
            $count_totalactivity[$row->id]=$count1->count();
        }

        return view('monitoring.index',['data'=>$data, 'count'=>$count, 'count_totalactivity'=>$count_totalactivity, 'tab_perm'=>$tab_perm, 'weeks'=>$weeks, 'sites'=>$sites, 'clients'=>$clients]);
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
        
        if (Auth::user()->parent_id == 0) {
            $data=sites::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
            $staffname=stafflistModel::where('user_id', Auth::id())->orderBy('id', 'desc')->get();            
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                // $sites=clients::orderBy('id', 'desc')->find($clientIds);
                $data=sites::whereIn('clientname_id',  $clientIds)->orderBy('id', 'desc')->get();
                $staffname=stafflistModel::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
 
                return view('monitoring.create',['sites'=>$data, 'staffname'=>$staffname, 'tab_perm'=>$tab_perm]);

            }

            $data=sites::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
            $staffname=stafflistModel::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }

        return view('monitoring.create',['sites'=>$data, 'staffname'=>$staffname, 'tab_perm'=>$tab_perm]);
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
        // dd(json_decode($request->shifts));
        //plan details and expiry date
        $plan = Plan::find(Auth::user()->user_plan);
        $sub_date = Auth::user()->subscription_date;
        $exp_date = Carbon::parse($sub_date)->addDays($plan->period);


        //module details
        if (Auth::user()->parent_id == 0) {
            $t_monitorings = monitoring::where('user_id', Auth::id())->count();
        }else {
            $t_monitorings = monitoring::where('user_id', Auth::user()->parent_id)->count();            
        }

        //checking subscription limit
        if ($plan->id == 1 && $plan->monitoring_limit <= $t_monitorings) {
            session()->flash('error', 'Your maxmimum limit to Add Monitorings has reached!');
            return redirect()->back();
        }

        //checking expiry date
        if ($exp_date < Carbon::now()) {
            session()->flash('error', 'Your Subscribed Plan has been Expired !');
            return redirect()->back();
        }

        $request->validate([
            'site'=>'required',
            'hoursperweek'=>'required',
            'shifts' => 'required',
        ]);
        
        $data=new monitoring();
        $data->sitename_id=$request->site;
        $data->Week_Commencing=$request->weekcommencing;
        $data->Total_hours=$request->hoursperweek;
        // $data->shift_day_1=$request->shift_day1;
        // $data->start_time_day1=$request->time_in_day1;
        // $data->end_time_day1=$request->time_out_day1;
        // $data->guardname_day1=$request->guardname_day1;
        // $data->shift_hours_day1=$request->shift1hours;
        // $data->shift_day_2=$request->shift_day2;
        // $data->start_time_day2=$request->time_in_day2;
        // $data->end_time_day2=$request->time_out_day2;
        // $data->guardname_day2=$request->guardname_day2;
        // $data->shift_hours_day2=$request->shift2hours;
        // $data->shift_day_3=$request->shift_day3;
        // $data->start_time_day3=$request->time_in_day3;
        // $data->end_time_day3=$request->time_out_day3;
        // $data->guardname_day3=$request->guardname_day3;
        // $data->shift_hours_day3=$request->shift3hours;
        // $data->shift_day_4=$request->shift_day4;
        // $data->start_time_day4=$request->time_in_day4;
        // $data->end_time_day4=$request->time_out_day4;
        // $data->guardname_day4=$request->guardname_day4;
        // $data->shift_hours_day4=$request->shift4hours;
        // $data->shift_day_5=$request->shift_day5;
        // $data->start_time_day5=$request->time_in_day5;
        // $data->end_time_day5=$request->time_out_day5;
        // $data->guardname_day5=$request->guardname_day5;
        // $data->shift_hours_day5=$request->shift5hours;
        // $data->shift_day_6=$request->shift_day6;
        // $data->start_time_day6=$request->time_in_day6;
        // $data->end_time_day6=$request->time_out_day6;
        // $data->guardname_day6=$request->guardname_day6;
        // $data->shift_hours_day6=$request->shift6hours;
        // $data->shift_day_7=$request->shift_day7;
        // $data->start_time_day7=$request->time_in_day7;
        // $data->end_time_day7=$request->time_out_day7;
        // $data->guardname_day7=$request->guardname_day7;
        // $data->shift_hours_day7=$request->shift7hours;

        // $data->start_time_day1_2 = $request->time_in_day1_2;
        // $data->end_time_day1_2 = $request->time_out_day1_2;
        // $data->guardname_day1_2 = $request->guardname_day1_2;
        // $data->shift_hours_day1_2 = $request->shift1hours_2;

        // $data->start_time_day2_2 = $request->time_in_day2_2;
        // $data->end_time_day2_2 = $request->time_out_day2_2;
        // $data->guardname_day2_2 = $request->guardname_day2_2;
        // $data->shift_hours_day2_2 = $request->shift2hours_2;

        // $data->start_time_day3_2 = $request->time_in_day3_2;
        // $data->end_time_day3_2 = $request->time_out_day3_2;
        // $data->guardname_day3_2 = $request->guardname_day3_2;
        // $data->shift_hours_day3_2 = $request->shift3hours_2;

        // $data->start_time_day4_2 = $request->time_in_day4_2;
        // $data->end_time_day4_2 = $request->time_out_day4_2;
        // $data->guardname_day4_2 = $request->guardname_day4_2;
        // $data->shift_hours_day4_2 = $request->shift4hours_2;

        // $data->start_time_day5_2 = $request->time_in_day5_2;
        // $data->end_time_day5_2 = $request->time_out_day5_2;
        // $data->guardname_day5_2 = $request->guardname_day5_2;
        // $data->shift_hours_day5_2 = $request->shift5hours_2;

        // $data->start_time_day6_2 = $request->time_in_day6_2;
        // $data->end_time_day6_2 = $request->time_out_day6_2;
        // $data->guardname_day6_2 = $request->guardname_day6_2;
        // $data->shift_hours_day6_2 = $request->shift6hours_2;

        // $data->start_time_day7_2 = $request->time_in_day7_2;
        // $data->end_time_day7_2 = $request->time_out_day7_2;
        // $data->guardname_day7_2 = $request->guardname_day7_2;
        // $data->shift_hours_day7_2 = $request->shift7hours_2;

        // // dd($data);
        // $startTime1 = Carbon::parse($data->start_time_day1);
        // $endTime1 = Carbon::parse($data->end_time_day1);
        // $shift1hours =  $startTime1->diff($endTime1)->format('%H:%I:%S')." Hours";
        // $startTime2 = Carbon::parse($data->start_time_day2);
        // $endTime2 = Carbon::parse($data->end_time_day2);
        // $shift2hours =  $startTime2->diff($endTime2)->format('%H:%I:%S')." Hours";

        $shifts = json_decode($request->shifts);
        
        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }
        
        $data->save();
        if ($request->shifts && $shifts) {
            foreach ($shifts as $shift) {
                $s_staff = new MonitoringStaff();
                $s_staff->monitoring_id = $data->id;
                $s_staff->shift_day = $shift->day;
                $s_staff->time_in = $shift->time_in;
                $s_staff->time_out = $shift->time_out;
                $s_staff->staff_id = $shift->staff_id;
                $s_staff->staff_sia = $shift->staff_sia;
                $s_staff->staff_phone = $shift->staff_phone;
                $s_staff->total_hours = $shift->total_hours;
                $s_staff->guard_time_in = $shift->time_in;
                $s_staff->guard_time_out = $shift->time_out;
                $s_staff->guard_hours = $shift->total_hours;
                $s_staff->save();
            }            
        }

        $shit_hours = MonitoringStaff::where('monitoring_id', $data->id)->sum('total_hours');
        $data->Total_hours = $shit_hours;
        $data->save();

        $site = sites::find($request->site);

        $desc = "Added Monitoring of Site: $site->sitename, on week: $data->Week_Commencing";
        
        $this->activityLog('Monitoring', 'Added',$desc, Auth::id(), $data->user_id);
        

        return redirect('monitoring/create')->with('msg','Site has been added to monitoring');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
        $data=monitoring::with('monitoring_staff.staff', 'site')->find($id);
        // dd($data->toArray());
        if ($data == null) {
            return redirect()->back();
        }
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }

        // dd($data->toArray());
        if (Auth::user()->parent_id == 0) {
            $siteactivities=activitiesoccured::with('activity')->where('Week_Commencing', $data->id)->where('sitename_id', $data->sitename_id)->where('user_id', Auth::id())->get();        
        }else {
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            
            if ($assignedClients->count() > 0 ) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }   
                if (!in_array($data->site->clientname_id, $clientIds)) {
                    return redirect()->back();
                }
            }
            $siteactivities=activitiesoccured::with('activity')->where('Week_Commencing', $data->id)->where('sitename_id', $data->sitename_id)->where('user_id', Auth::user()->parent_id)->get();        
        }

        // dd($siteactivities->toArray());

        if (Auth::user()->parent_id == 0) {
            $activities=activities::where('user_id', Auth::id())->get();   
            $staffs = stafflistModel::where('user_id', Auth::id())->get();
        }else {
            $activities=activities::where('user_id', Auth::user()->parent_id)->get();        
            $staffs = stafflistModel::where('user_id', Auth::user()->parent_id)->get();
        }

        $achievements = 100;
        $blowOut  = 0;
        $lateness  = 0;
        $complaint_low  = 0;
        $complaint_medium  = 0;
        $complaint_high  = 0;
        $missed_checkcall  = 0;
        $missed_patrol  = 0;

        // dd($siteactivities->toArray());
        foreach ($siteactivities as $activity) {
            if ($activity->activity->Activity_Type == 'Loss of Hours -> Blow out') {
                $days = MonitoringStaff::where('monitoring_id', $activity->Week_Commencing)->where('shift_day', $activity->day)->count();
                $weight = $activity->activity->Activity_Weight / $days;
                $achievements -= $weight;
                $blowOut += $weight;

            }elseif($activity->activity->Activity_Type == 'Loss of Hours -> Lateness'){

                $achievements -= $activity->activity->Activity_Weight;
                $lateness += $activity->activity->Activity_Weight;

            }elseif($activity->activity->Activity_Type == 'Service Complaint - Low'){

                $achievements -= $activity->activity->Activity_Weight;
                $complaint_low += $activity->activity->Activity_Weight;

            }elseif($activity->activity->Activity_Type == 'Service Complaint - Medium'){

                $achievements -= $activity->activity->Activity_Weight;
                $complaint_medium += $activity->activity->Activity_Weight;

            }elseif($activity->activity->Activity_Type == 'Service Complaint - High'){

                $achievements -= $activity->activity->Activity_Weight;
                $complaint_high += $activity->activity->Activity_Weight;

            }elseif($activity->activity->Activity_Type == 'Missed Checkcall'){

                $achievements -= $activity->activity->Activity_Weight;
                $missed_checkcall += $activity->activity->Activity_Weight;

            }elseif($activity->activity->Activity_Type == 'Missed Patrol'){

                $achievements -= $activity->activity->Activity_Weight;
                $missed_patrol += $activity->activity->Activity_Weight;

            }else {
                
            }
        }

        // dd($siteactivities->toArray());

        $chartData1="['achievements', ".$achievements."],";
        $chartData1.="['Loss of Hours -> Blow out', ".$blowOut."],";
        $chartData1.="['Loss of Hours -> Lateness', ".$lateness."],";
        $chartData1.="['Service Complaint - Low', ".$complaint_low."],";
        $chartData1.="['Service Complaint - Medium', ".$complaint_medium."],";
        $chartData1.="['Service Complaint - High', ".$complaint_high."],";
        $chartData1.="['Missed Checkcall', ".$missed_checkcall."],";
        $chartData1.="['Missed Patrol', ".$missed_patrol."],";
        $chartData1=rtrim($chartData1, ",");
        
        // dd($chartData1);
        return view('monitoring.show',['data'=>$data ,'chartData'=>$chartData1, 'siteactivites'=>$siteactivities, 'activities'=>$activities, 'staffs'=>$staffs]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $data=monitoring::with('monitoring_staff.staff')->find($id);
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }


        if (Auth::user()->parent_id == 0) {
            $sites=sites::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
            $staffname=stafflistModel::where('user_id', Auth::id())->orderBy('id', 'desc')->get();            
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                // $sites=clients::orderBy('id', 'desc')->find($clientIds);
                $sites=sites::whereIn('clientname_id',  $clientIds)->orderBy('id', 'desc')->get();
                $staffname=stafflistModel::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
 
                return view('monitoring.edit',['data'=>$data, 'sites'=>$sites, 'staffname'=>$staffname]);

            }

            $sites=sites::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
            $staffname=stafflistModel::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }

       
        
        // dd($data->toArray());
        return view('monitoring.edit',['data'=>$data, 'sites'=>$sites, 'staffname'=>$staffname]);
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
            'weekcommencing'=>'required',
            'site'=>'required',
            'hoursperweek'=>'required'
        ]);
        
        $data=monitoring::find($id);
        $data->sitename_id=$request->site;
        $data->Week_Commencing=$request->weekcommencing;
        $data->Total_hours=$request->hoursperweek;
        // $data->shift_day_1=$request->shift_day1;
        // $data->start_time_day1=$request->time_in_day1;
        // $data->end_time_day1=$request->time_out_day1;
        // $data->guardname_day1=$request->guardname_day1;
        // $data->shift_day_2=$request->shift_day2;
        // $data->start_time_day2=$request->time_in_day2;
        // $data->end_time_day2=$request->time_out_day2;
        // $data->guardname_day2=$request->guardname_day2;
        // $data->shift_day_3=$request->shift_day3;
        // $data->start_time_day3=$request->time_in_day3;
        // $data->end_time_day3=$request->time_out_day3;
        // $data->guardname_day3=$request->guardname_day3;
        // $data->shift_day_4=$request->shift_day4;
        // $data->start_time_day4=$request->time_in_day4;
        // $data->end_time_day4=$request->time_out_day4;
        // $data->guardname_day4=$request->guardname_day4;
        // $data->shift_day_5=$request->shift_day5;
        // $data->start_time_day5=$request->time_in_day5;
        // $data->end_time_day5=$request->time_out_day5;
        // $data->guardname_day5=$request->guardname_day5;
        // $data->shift_day_6=$request->shift_day6;
        // $data->start_time_day6=$request->time_in_day6;
        // $data->end_time_day6=$request->time_out_day6;
        // $data->guardname_day6=$request->guardname_day6;
        // $data->shift_day_7=$request->shift_day7;
        // $data->start_time_day7=$request->time_in_day7;
        // $data->end_time_day7=$request->time_out_day7;
        // $data->guardname_day7=$request->guardname_day7;


        $shifts = json_decode($request->shifts);
        
        
        
        $data->save();
        
        if ($request->shifts && $shifts) {
            foreach ($shifts as $shift) {
                $s_staff = new MonitoringStaff();
                $s_staff->monitoring_id = $data->id;
                $s_staff->shift_day = $shift->day;
                $s_staff->time_in = $shift->time_in;
                $s_staff->time_out = $shift->time_out;
                $s_staff->staff_id = $shift->staff_id;
                $s_staff->staff_phone = $shift->staff_phone;
                $s_staff->staff_sia = $shift->staff_sia;
                $s_staff->total_hours = $shift->total_hours;
                $s_staff->guard_time_in = $shift->time_in;
                $s_staff->guard_time_out = $shift->time_out;
                $s_staff->guard_hours = $shift->total_hours;
                $s_staff->save();
            }            
        }
        $site = sites::find($data->sitename_id);
        $desc = "Updated Monitoring of Site: $site->sitename, on week: $data->Week_Commencing";

        $this->activityLog('Monitoring', 'Updated', $desc, Auth::id(), $data->user_id);
        
        return redirect('monitoring/create')->with('msg','Site has been updated in monitoring list');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $monitoring = monitoring::with('site')->find($id);
        $siteactivities=activitiesoccured::with('activity')->where('Week_Commencing', $monitoring->Week_Commencing)->where('sitename_id', $monitoring->sitename_id)->delete();
        SupervisoryVisit::where('site_id', $monitoring->sitename_id)->where('date', $monitoring->Week_Commencing)->delete();
        
        $account_id = $monitoring->user_id;

        monitoring::find($id)->delete();

        $desc = "Deleted MOnitoring of Site: ". $monitoring->sitename_id."Shift Week : $monitoring->Week_Commencing, Monitoring Id: $monitoring->id";
        $this->activityLog('Monitoring', 'Deleted', $desc, Auth::id(), $account_id);

        return redirect('monitoring')->with('msg','site has been removed from monitoring list');
    }

    public function sitesMonitoring($siteId)
    {
        // dd($siteId);
        $monitorings = monitoring::where('sitename_id', $siteId)->get();
        return $monitorings->toArray();
    }

    public function monitoringShifts($monitoringId)
    {
        $shifts = MonitoringStaff::where('monitoring_id', $monitoringId)->get();

        return $shifts->toArray();
    }

    public function deleteShift($id)
    {
        $monitoringId = MonitoringStaff::find($id)->monitoring_id;
        MonitoringStaff::find($id)->delete();
        $total_hours = MonitoringStaff::where('monitoring_id', $monitoringId)->sum('total_hours');
        $monitoring = monitoring::with('site')->find($monitoringId);
        $monitoring->total_hours = $total_hours;
        $monitoring->save();
        
        $desc = "Deleted Shift of Monitoring of Site: ". $monitoring->site->sitename."Shift Week : $monitoring->Week_Commencing, Monitoring Id: $monitoring->id";
        $this->activityLog('Monitoring shift', 'Deleted', $desc, Auth::id(), $monitoring->user_id);

        session()->flash('msg', 'Shift Removed Successfully');
        return redirect()->back();
    }

    public function updateShift(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'id' => 'required',
            // 'shift_day' => 'required',
            'time_in' => 'required',
            'time_out' => 'required',
            'guardname' => 'required',
            'shifthours' => 'required',
            'staff_sia' => 'required',
            'staff_phone' => 'required',
        ]);

        $shift = MonitoringStaff::find($request->id);
        // dd($shift->toArray());
        // $shift->shift_day = $request->shift_day;
        $shift->time_in = $request->time_in;
        $shift->time_out = $request->time_out;
        $shift->staff_id = $request->guardname;
        $shift->staff_sia = $request->staff_sia;
        $shift->staff_phone = $request->staff_phone;
        $shift->total_hours = $request->shifthours;
        $shift->guard_time_in = $request->guard_time_in;
        $shift->guard_time_out = $request->guard_time_out;
        $shift->guard_hours = $request->guard_hours;
        $shift->save();

        $total_hours = MonitoringStaff::where('monitoring_id', $shift->monitoring_id)->sum('total_hours');
        // dd($total_hours);
        $monitoring = monitoring::with('site')->find($shift->monitoring_id);
        $monitoring->total_hours = $total_hours;
        $monitoring->save();

        $desc = "Updated a Shift of Monitoring of Site: ". $monitoring->site->sitename."Shift Week : $monitoring->Week_Commencing, Monitoring Id: $monitoring->id";
        $this->activityLog('Monitoring shift', 'Updated', $desc, Auth::id(), $monitoring->user_id);

        session()->flash('msg', 'Shift Updated');
        return redirect()->back();
    }

    public function monitoringsShifts($week, $siteId)
    {
        // dd($week);
        $WC = str_replace('-', '/', $week);
        $monitoring = monitoring::where('sitename_id', $siteId)->where('Week_Commencing', $WC)->first();

        $shifts = MonitoringStaff::where('monitoring_id', $monitoring->id)->get();

        return $shifts->toArray();
    }

    public function getShiftStaffs($week, $siteId, $day)
    {
        $WC = str_replace('-', '/', $week);
        $monitoring = monitoring::where('sitename_id', $siteId)->where('Week_Commencing', $WC)->first();

        $shifts = MonitoringStaff::where('monitoring_id', $monitoring->id)->where('shift_day', $day)->get();

        $guards = [];
        foreach ($shifts as $shift) {
            array_push($guards, $shift->staff_id);
        }

        $staffs = stafflistModel::find($guards);

        return $staffs->toArray();

    }

    public function monitoringFilter(Request $request)
    {
        // dd($request->all());
        // $request->validate([
        //     'selected_week' => 'required',
        //     'selected_week' => 'required',
        //     'selected_week' => 'required',
            
        // ]);

        $selected_week = $request->selected_week;
        $selected_client = $request->selected_client;
        $selected_site = $request->selected_site;
        
        $tab = Tab::where('tab_link', 'monitoring')->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();


        if (Auth::user()->parent_id == 0) {

            $data=monitoring::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
            
            if ($selected_week) {
                
                $data = $data->where('Week_Commencing', $selected_week);
            }
            // if ($selected_client) {
            //     $data = $data->whereHas('site', function ($query) use ($selected_client){
            //         $query->where('clientname_id', $selected_client);
            //     });
            // }
            
            if ($selected_site) {
                $data = $data->where('sitename_id', $selected_week);
            }
            $weeks=monitoring::where('user_id', Auth::id())->orderBy('Week_Commencing', 'desc')->get('Week_Commencing');
            $sites=sites::where('user_id', Auth::id())->get();
            $clients=clients::where('user_id', Auth::id())->get();

        }else {
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                
 
                $data=monitoring::whereHas('site', function ($q) use($clientIds){
                    $q->whereIn('clientname_id', $clientIds);
                })->where('Week_Commencing', $selected_week)->orderBy('id', 'desc')->get();

                $weeks=monitoring::whereHas('site', function ($q) use ($clientIds){
                    $q->whereIn('clientname_id', $clientIds);
                })->orderBy('Week_Commencing', 'desc')->get('Week_Commencing');
                $sites=sites::whereIn('clientname_id', $clientIds)->get();
                $clients=clients::find($clientIds);
                
                $count = DB::select("SELECT count(*) as total, `sitename_id` FROM activitiesoccureds group by `sitename_id`");

                $count_totalactivity=[];
        
                foreach ($data as $row){
                    $count1=activitiesoccured::where('sitename_id', $row->sitename_id)->where('Week_Commencing', $row->id)->get();
                    $count_totalactivity[$row->id]=$count1->count();
                }
                
                
                return view('monitoring.index',['data'=>$data, 'count'=>$count, 'count_totalactivity'=>$count_totalactivity, 'tab_perm'=>$tab_perm, 'selected_week'=>$selected_week, 'selected_client'=>$selected_client, 'selected_site'=>$selected_site, 'weeks'=>$weeks, 'sites'=>$sites, 'clients'=>$clients]);

            }


            $data=monitoring::where('Week_Commencing', $selected_week)->where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
            $weeks=monitoring::where('user_id', Auth::user()->parent_id)->orderBy('Week_Commencing', 'desc')->get('Week_Commencing');

            $sites=sites::where('user_id', Auth::user()->parent_id)->get();
            $clients=clients::where('user_id', Auth::user()->parent_id)->get();
        }

        
        $count = DB::select("SELECT count(*) as total, `sitename_id` FROM activitiesoccureds group by `sitename_id`");

        $count_totalactivity=[];

        foreach ($data as $row){
            $count1=activitiesoccured::where('sitename_id', $row->sitename_id)->where('Week_Commencing', $row->id)->get();
            $count_totalactivity[$row->id]=$count1->count();
        }
        
        // dd($data->toArray());
        return view('monitoring.index',['data'=>$data, 'count'=>$count, 'count_totalactivity'=>$count_totalactivity, 'tab_perm'=>$tab_perm, 'selected_week'=>$selected_week, 'selected_client'=>$selected_client, 'selected_site'=>$selected_site, 'weeks'=>$weeks, 'sites'=>$sites, 'clients'=>$clients]);
    }

    public function getSelectedShifts($ids)
    {
        $ids = json_decode($ids);
        // dd($ids);
        $shifts = monitoring::with('site','monitoring_staff.staff')->find($ids);
        return $shifts->toArray();
    }
}
    
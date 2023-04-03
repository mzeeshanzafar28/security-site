<?php

namespace App\Http\Controllers;

use App\Models\activitiesoccured;
use App\Models\AssignedClient;
use App\Models\clients;
use App\Models\monitoring;
use App\Models\Permission;
use App\Models\sites;
use App\Models\SupervisoryVisit;
use App\Models\Tab;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index(Request $request)
    {
        if ($request->filter) {
            $filter = $request->filter;
        }else {
            $filter = 'monthly';    
        }

        

        $current_date = Carbon::now();

        if ($filter == 'weekly') {
            $date = strtotime("last Monday");
            $min_date = date('d/m/Y', strtotime("Monday this week"));
            // dd($min_date);

            $max_date = Carbon::createFromFormat('d/m/Y', $min_date)->addDays(6)->format('d/m/Y');

            
        }elseif ($filter == 'monthly') {
            $min_date = $current_date->firstOfMonth()->format('d/m/Y');

            $max_date = $current_date->lastOfMonth()->format('d/m/Y');

        }elseif ($filter == 'quarterly') {
            $date = Carbon::now();
            $min_date = $date->firstOfQuarter()->format('d/m/Y');
            $max_date = $date->lastOfQuarter()->format('d/m/Y');

        }elseif ($filter == 'yearly') {

            $min_date = Carbon::now()->firstOfYear()->format('d/m/Y');
            $max_date = Carbon::now()->lastOfYear()->format('d/m/Y');
        }else{

            $min_date = $current_date->firstOfMonth()->format('d/m/Y');

            $max_date = $current_date->lastOfMonth()->format('d/m/Y');
        }
        // $min_date = Carbon::createFromFormat('d/m/Y', $min_date);

        // dd($min_date, $max_date);

        
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();
       
        

        
        if (Auth::user()->parent_id == 0) {
            $sites = sites::with('client')->where('user_id', Auth::id())->get();
            $clients = clients::with('sites')->where('user_id', Auth::id())->get();
            $visits = SupervisoryVisit::with('site')->where('user_id', Auth::id())->get();
        }else {
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();

            if ($assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }

                $sites = sites::with('client')->whereIn('clientname_id', $clientIds)->get();
                $clients = clients::with('sites')->whereIn('id', $clientIds)->get();
                $siteIds = [];
                foreach ($sites as $site) {
                    array_push($siteIds, $site->id);
                }
                $visits = SupervisoryVisit::with('site')->whereIn('site_id', $siteIds)->get();

            }else {
                $sites = sites::with('client')->where('user_id', Auth::user()->parent_id)->get();
                $clients = clients::with('sites')->where('user_id', Auth::user()->parent_id)->get();
                $visits = SupervisoryVisit::with('site')->where('user_id', Auth::user()->parent_id)->get();
            }

        }

        

        
        
        $totalShiftsHours = [];
        $totalMisconduct = [];
        $totalComplaints = [];

        $clientShiftsHours = [];
        $clientMisconduct = [];
        $clientComplaints = [];
        
        $min_date = Carbon::createFromFormat('d/m/Y', $min_date);
        $max_date = Carbon::createFromFormat('d/m/Y', $max_date);
        
        foreach ($clients as $client) {
            $clientShiftHours = 0;
            $clientShiftComplaints = 0;
            $clientShiftMisconduct = 0;

            foreach ($client->sites as $site) {
                $monitorings = monitoring::with('monitoring_staff')->where('sitename_id', $site->id)->get();
               
                $filteredShifts = [];
    
                $shiftHours = 0;
                $shiftComplaints = 0;
                $shiftMisconduct = 0;
    
                foreach ($monitorings as $shift) {
                    $shift_date = Carbon::createFromFormat('d/m/Y', $shift->Week_Commencing);
                    if ($shift_date >= $min_date && $shift_date <= $max_date) {
                        array_push($filteredShifts, $shift);
                    }
                }
                

                
    
                foreach ($filteredShifts as $item) {
    
                    //calculating shift hours
                    $itemHour = $item->monitoring_staff->sum('total_hours');
                    $shiftHours += $itemHour;
    
                    //calculating total complaints
                    $itemComplaint=activitiesoccured::whereHas('activity', function ($q){
                        $q->where('Activity_Type', 'Service Complaint - Low')->orWhere('Activity_Type', 'Service Complaint - Medium')->orWhere('Activity_Type', 'Service Complaint - High');
                    })->with('activity')->where('sitename_id', $item->sitename_id)->where('Week_Commencing', $item->id)->get();

                    $shiftComplaints += $itemComplaint->count();
    
                    //calculating total misconducts
                    $itemMisconduct =activitiesoccured::whereHas('activity', function ($q){
                        $q->where('Activity_Type', 'Loss of Hours -> Blow out')->orWhere('Activity_Type', 'Loss of Hours -> Lateness')->orWhere('Activity_Type', 'Missed Checkcall')->orWhere('Activity_Type', 'Missed Patrol');
                    })->with('activity')->where('sitename_id', $item->sitename_id)->where('Week_Commencing', $item->id)->get();
    
                    $shiftMisconduct += $itemMisconduct->count();

                }

                
                
                $totalShiftsHours[$site->id] = $shiftHours;
                $clientShiftHours += $shiftHours;
                $totalComplaints[$site->id] = $shiftComplaints;
                $clientShiftComplaints += $shiftComplaints;
                $totalMisconduct[$site->id] = $shiftMisconduct;
                $clientShiftMisconduct += $shiftMisconduct;
                // dd($clientShiftComplaints);

            }

            $clientShiftsHours[$client->id] = $clientShiftHours;
            $clientMisconduct[$client->id] = $clientShiftMisconduct;
            $clientComplaints[$client->id] = $clientShiftComplaints;
        }

        

        
        

        //calculating shift hours chart data
        $sumHours = array_sum($clientShiftsHours);
        // dd($clientShiftsHours);
        $hoursChartData = '[["Client Name", "Total Shifts Hours"],';
        
        if ($sumHours > 0) {
            foreach ($clients as $client) {
                // $h = number_format($clientShiftsHours[$client->id]/$sumHours, 2);
                $h = $clientShiftsHours[$client->id];
                $hoursChartData .= "['".$client->clientname."', ".$h."],";
            }
        }
        $hoursChartData=rtrim($hoursChartData, ",");
        $hoursChartData .= ']';
        

        //calculating  Misconduct Chart Data
        $sumMisconducts = array_sum($clientMisconduct);
        $misconductChartData = '[["Client Name", "Total Misconducts "],';
        if ($sumMisconducts > 0) {
            foreach ($clients as $client) {
                // $h = number_format($clientMisconduct[$client->id]/$sumMisconducts, 2);
                $h = $clientMisconduct[$client->id];
                $misconductChartData .= "['".$client->clientname."', ".$h."],";
            }
        }
        $misconductChartData=rtrim($misconductChartData, ",");
        $misconductChartData .= ']';
       
        //calculating  Complaints Chart Data
        $sumComplaints = array_sum($clientComplaints);
        $complaintChartData = '[["Client Name", "Total Complaints "],';
        if ($sumComplaints > 0) {
            foreach ($clients as $client) {
                // $h = number_format($clientComplaints[$client->id]/$sumComplaints, 2);
                $h = $clientComplaints[$client->id];
                $complaintChartData .= "['".$client->clientname."', ".$h."],";
            }
        }
        $complaintChartData=rtrim($complaintChartData, ",");
        $complaintChartData .="]";

        //creating chart data for supervisory visits
        $visitsChartData = "[['ID', 'Number of Visits', 'Visits Average rating', 'Sites Visited'],";
        
        $filteredVisits =  [];
        $visitedSites = [];
        foreach ($visits as $visit) {
            $date = Carbon::createFromFormat('d/m/Y', $visit->date);
            if ($date >= $min_date && $date <= $max_date) {
                array_push($filteredVisits, $visit);
                
            }
        }

       
        
        $visitsCount = [];
        foreach ($filteredVisits as $visit) {
            $avg_rating = (int) (($visit->time_keeping + $visit->appearnce + $visit->attitude + $visit->communication) / 4);
            array_push($visitsCount, $avg_rating);
            if ($visit->site) {
                if (isset($visitedSites[$avg_rating])) {
                    $visitedSites[$avg_rating] .= ', '.$visit->site->sitename;
                }else {
                    $visitedSites[$avg_rating] = $visit->site->sitename;
                }
                                   
            }
        }
        

        $vals = array_count_values($visitsCount);
        // dd($vals);

        foreach ($vals as $key => $value) {
            $site_array = explode(', ',$visitedSites[$key]);
            $f_array = array_count_values($site_array);
            $siteString = '';
            foreach ($f_array as $siteName => $occ) {
                // dd($key, $value);
                $siteString .= $siteName.' ('.$occ.'), ';
            }
            $visitsChartData .= "[ '', ".$value.", ". $key.", '". $siteString . "', ],";
        }

        $visitsChartData = rtrim($visitsChartData, ",");
        $visitsChartData .= "],";
        // $star1 = 
        // dd($visitsChartData);
    //    dd($vals);

        return view('index', get_defined_vars());
    }
}

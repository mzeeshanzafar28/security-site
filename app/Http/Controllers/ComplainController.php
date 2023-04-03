<?php

namespace App\Http\Controllers;

use App\Models\activities;
use App\Models\activitiesoccured;
use App\Models\AssignedClient;
use App\Models\clients;
use App\Models\Complain;
use App\Models\monitoring;
use App\Models\MonitoringStaff;
use App\Models\Permission;
use App\Models\sites;
use App\Models\stafflistModel;
use App\Models\subcontractorModel;
use App\Models\Tab;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ComplainController extends Controller
{
    public function index()
    {
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        // $complaints = Complain::with('client', 'site')->get();
        if (Auth::user()->parent_id == 0) {
            $complaints = activitiesoccured::with('site', 'activity', 'monitoring')->whereHas('activity', function ($q) {
                $q->where('Activity_Type', 'Service Complaint - Low')->orWhere('Activity_Type', 'Service Complaint - Medium')->orWhere('Activity_Type', 'Service Complaint - High');
            })->where('user_id', Auth::id())->get();
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                
                $complaints = activitiesoccured::whereHas('site', function ($q) use ($clientIds){
                    $q->whereIn('clientname_id', $clientIds);
                })->with('activity', 'monitoring')->whereHas('activity', function ($q) {
                    $q->where('Activity_Type', 'Service Complaint - Low')->orWhere('Activity_Type', 'Service Complaint - Medium')->orWhere('Activity_Type', 'Service Complaint - High');
                })->where('user_id', Auth::user()->parent_id)->get();
 
                return view('complaints.index', get_defined_vars());

            }

            $complaints = activitiesoccured::with('site', 'activity', 'monitoring')->whereHas('activity', function ($q) {
                $q->where('Activity_Type', 'Service Complaint - Low')->orWhere('Activity_Type', 'Service Complaint - Medium')->orWhere('Activity_Type', 'Service Complaint - High');
            })->where('user_id', Auth::user()->parent_id)->get();
        }
        // $complaints = activitiesoccured::with('site', 'activity')->get();

        return view('complaints.index', get_defined_vars());
    }

    public function create()
    {
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        // $clients = clients::all();
        if (Auth::user()->parent_id == 0) {
            $sites = sites::where('user_id', Auth::id())->get();
            $activities = activities::where('user_id', Auth::id())->where(function($q){
                $q->where('Activity_Type', 'Service Complaint - Low')->orWhere('Activity_Type', 'Service Complaint - Medium')->orWhere('Activity_Type', 'Service Complaint - High');
            })->get();
            // $complaints = activitiesoccured::with('site', 'activity')->where('user_id', Auth::id())->get();
        }else {
            //checking assigned clients of child account

            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();

            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                
                $sites = sites::whereIn('clientname_id', $clientIds)->where('user_id', Auth::user()->parent_id)->get();
                $activities = activities::where('user_id', Auth::user()->parent_id)->where(function($q){
                    $q->where('Activity_Type', 'Service Complaint - Low')->orWhere('Activity_Type', 'Service Complaint - Medium')->orWhere('Activity_Type', 'Service Complaint - High');
                })->get();

                return view('complaints.create', get_defined_vars());

            }

            $sites = sites::where('user_id', Auth::user()->parent_id)->get();
            $activities = activities::where('user_id', Auth::user()->parent_id)->where(function($q){
                $q->where('Activity_Type', 'Service Complaint - Low')->orWhere('Activity_Type', 'Service Complaint - Medium')->orWhere('Activity_Type', 'Service Complaint - High');
            })->get();
            
        }
        


        return view('complaints.create', get_defined_vars());
    }

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
        // $tab = Tab::where('tab_link', 'complaint/create')->first();
        // $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        $complaint = activitiesoccured::with('site', 'activity')->find($id);
        $monitorings = monitoring::where('sitename_id', $complaint->sitename_id)->get();
        $shifts =  MonitoringStaff::where('monitoring_id', $complaint->Week_Commencing)->get();

        if ($complaint->suplier_name != null) {
            $officers = stafflistModel::where('staffsubcontractor_name', $complaint->suplier_name)->get();
            
        }

        if (Auth::user()->parent_id == 0) {
            $sites = sites::where('user_id', Auth::id())->get();
            $activities = activities::where('user_id', Auth::id())->get();
            $subcontractors = subcontractorModel::where('user_id', Auth::id())->get();
           
            
        }else {

            //checking assigned clients of child account

            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();

            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                
                $sites = sites::whereIn('clientname_id', $clientIds)->where('user_id', Auth::user()->parent_id)->get();
                $activities = activities::where('user_id', Auth::user()->parent_id)->get();
                $subcontractors = subcontractorModel::where('user_id', Auth::user()->parent_id)->get();

                return view('complaints.create', get_defined_vars());

            }

            $sites = sites::where('user_id', Auth::user()->parent_id)->get();
            $activities = activities::where('user_id', Auth::user()->parent_id)->get();
            $subcontractors = subcontractorModel::where('user_id', Auth::user()->parent_id)->get();
        }

       
        // $sites = sites::all();
        // dd(get_defined_vars());
        return view('complaints.create', get_defined_vars());
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'Activity_Type' => 'required',
            'reason_of_activity' => 'required',
            'day' => 'required',
            'sitename_id' => 'required',
            'Week_Commencing' => 'required',
        ]);

        if ($request->id) {
            $request->validate([
                'complaint_date' => 'required',
                'client_name' => 'required',
                // 'client_email' => 'required',
                'complain_recieved' => 'required',
                'suplier_name' => 'required',
                'supplier_guard_name' => 'required',
                'complaint_resolve' => 'required',
                'supplier_communication' => 'required',
                'controllers' => 'required',
                'complaint_handler' => 'required',
            ]);
        $complaint = activitiesoccured::find($request->id); 
        $monitoring = monitoring::with('site')->find($request->Week_Commencing);

        $complaint->complaint_date = $request->complaint_date;
        $complaint->client_name = $request->client_name;
        // $complaint->client_email = $request->client_email;
        $complaint->complain_recieved = $request->complain_recieved;
        $complaint->suplier_name = $request->suplier_name;
        $complaint->supplier_guard_name = $request->supplier_guard_name;
        $complaint->complaint_resolve = $request->complaint_resolve;
        $complaint->supplier_communication = $request->supplier_communication;
        $complaint->controllers = $request->controllers;
        $complaint->complaint_handler = $request->complaint_handler;
        }else {
            $complaint = new activitiesoccured();
            $monitoring = monitoring::with('site')->find($request->Week_Commencing);
            // dd($monitoring);
            $shift = MonitoringStaff::where('monitoring_id', $monitoring->id)->where('shift_day', $request->day)->first();
            
            $staff = stafflistModel::find($shift->staff_id);
            $complaint->suplier_name = $staff->staffsubcontractor_name;
            $complaint->supplier_guard_name = $shift->staff_id;
        }
        

        

        $complaint->Activity_Type = $request->Activity_Type;
        $complaint->reason_of_activity = $request->reason_of_activity;
        $complaint->Week_Commencing = $request->Week_Commencing;
        $complaint->sitename_id = $request->sitename_id;
        $complaint->day = $request->day;
        $complaint->status = $request->status;
        if (Auth::user()->parent_id == 0) {
            $complaint->user_id = Auth::id();            
        }else {
            $complaint->user_id = Auth::user()->parent_id;
        }
        $complaint->save();


        if ($request->id) {
            $desc = "Updated a Complaint with id: $complaint->id, of site:". $monitoring->site->sitename;
            $this->activityLog('Complaints', 'Updated', $desc, Auth::id(), $complaint->user_id);
        }else {
            $desc = "Added a Complaint with id: $complaint->id, of site:". $monitoring->site->sitename;

            $this->activityLog('Complaints', 'Added', $desc, Auth::id(), $complaint->user_id);            
        }


        session()->flash('msg', 'Complaint Saved Successfully!');
        return redirect('complaints');
    }

    public function updateStatus($id, $value)
    {
        $complaint = activitiesoccured::find($id);
        $complaint->status = $value;
        $complaint->save();


        // $this->activityLog('Complaints', 'Updated', Auth::id(), $complaint->user_id);            
        session()->flash('msg', 'Complaint Status Updated Successfully!');
        return redirect()->back();
        
    }

    public function delete($id)
    {
        $data = activitiesoccured::with('site', 'monitoring')->find($id);
        activitiesoccured::find($id)->delete();
        
        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;
        }

        $desc = "Deleted a complaint of id: $data->id, site: ".$data->site->sitename.", monitoring: ".$data->monitroing->Week_Commencing;
        $this->activityLog('Complaints', 'Deleted', $desc, Auth::id(), $account_id);
        session()->flash('msg', 'Complaint Deleted Successfully!');
        return redirect()->back();
        
    }
}

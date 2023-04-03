<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AssignedClient;
use App\Models\monitoring;
use App\Models\MonitoringStaff;
use App\Models\Permission;
use App\Models\sites;
use App\Models\clients;
use App\Models\stafflistModel;
use App\Models\IncidentReport;
use Illuminate\Support\Facades\DB;
use App\Models\Tab;
use Illuminate\Support\Facades\Auth;

class IncidentReportController extends Controller
{
    public function index()
    {
        $tab = Tab::where('tab_link', 'monitoring')->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        if (Auth::user()->parent_id == 0) {
            $data = IncidentReport::with('site', 'staff', 'client')->where('user_id', Auth::id())->orderBy('id', 'DESC')->get();
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                
                $data = IncidentReport::whereHas('site', function ($q) use ($clientIds){
                    $q->whereIn('clientname_id', $clientIds);
                })->with('staff', 'site', 'client')->where('user_id', Auth::user()->parent_id)->orderBy('id', 'DESC')->get();
 
                return view('incidentReports.index', get_defined_vars());

            }

            $data = IncidentReport::with('site', 'staff', 'client')->where('user_id', Auth::user()->parent_id)->orderBy('id', 'DESC')->get();
        }

        return view('incidentReports.index', get_defined_vars());
    }

    public function create()
    {
        
        $tab = Tab::where('tab_link', 'monitoring')->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        if (Auth::user()->parent_id == 0) {
            $clients = clients::where('user_id', Auth::id())->get();
            // $sites = sites::where('user_id',  Auth::id())->get();
            // $weeks=monitoring::where('user_id', Auth::id())->orderBy(DB::raw("STR_TO_DATE(Week_Commencing, '%d/%m/%Y')"), 'desc')->get('Week_Commencing');
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                $clients = clients::find($clientIds);
                // $sites = sites::whereIn('clientname_id', $clientIds)->where('user_id',  Auth::user()->parent_id)->get();
                // $weeks=monitoring::whereHas('site', function ($q) use ($clientIds){
                //     $q->whereIn('clientname_id', $clientIds);
                // })->orderBy(DB::raw("STR_TO_DATE(Week_Commencing, '%d/%m/%Y')"), 'desc')->get('Week_Commencing');

                return view('incidentReports.create', get_defined_vars());

            }
            $clients = clients::where('user_id', Auth::user()->parent_id)->get();
            // $weeks=monitoring::where('user_id', Auth::user()->parent_id)->orderBy('Week_Commencing', 'desc')->get('Week_Commencing');
            // $sites = sites::where('user_id',  Auth::user()->parent_id)->get();
        }
        return view('incidentReports.create', get_defined_vars());

    }

    public function store(Request $request)
    {
        $data = new IncidentReport();

        $data->site_id = $request->site_id;
        $data->client_id = $request->client_id;
        $data->site_staff = $request->site_staff;
        $data->guard_id = $request->guard_id;
        $data->guard_sia = $request->guard_sia;
        $data->guard_phone = $request->guard_phone;
        $data->Week_Commencing = $request->Week_Commencing;
        $data->shift_day = $request->shift_day;
        $data->time = $request->time;
        $data->report_date = $request->report_date;
        $data->detail = $request->detail;
        $data->action = $request->action;
        $data->people_informed = $request->people_informed;
        $data->police_involved = $request->police_involved;
        $data->witness_name = $request->witness_name;
        $data->witness_email = $request->witness_email;
        $data->witness_phone = $request->witness_phone;
        $data->witness_statement = $request->witness_statement;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }

        if ($request->hasfile('file')) {
            $img = $request->file('file');
            $imgName = time() ."-". str_replace(" ", "_", $img->getClientOriginalName());
            $img->move(public_path('uploads'), $imgName);
            $data->file = $imgName;
        }

        $data->save();
        
        session()->flash('msg', 'Incident Report Added Successfully');
        return redirect('incident-report/all');
    }

    public function show($id)
    {
        $data = IncidentReport::with('site', 'staff')->find($id);
        // dd($data->toArray());
        if (Auth::user()->parent_id == 0) {
            $sites = sites::where('user_id',  Auth::id())->get();
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                
                $sites = sites::whereIn('clientname_id', $clientIds)->where('user_id',  Auth::user()->parent_id)->get();
 
                // return view('incidentReports.create', get_defined_vars());

            }

            $sites = sites::where('user_id',  Auth::user()->parent_id)->get();
        }
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }

        return view('incidentReports.show', get_defined_vars());

    }

    public function delete($id){
        IncidentReport::find($id)->delete();
        session()->flash('message', 'Incidenet Deleted');
        return redirect()->back();
    }
}

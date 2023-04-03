<?php

namespace App\Http\Controllers;

use App\Models\AssignedClient;
use App\Models\monitoring;
use App\Models\MonitoringStaff;
use App\Models\Permission;
use App\Models\sites;
use App\Models\stafflistModel;
use App\Models\SupervisoryVisit;
use App\Models\Tab;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SupervisoryVisitController extends Controller
{
    public function index()
    {
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        if (Auth::user()->parent_id == 0) {
            $data = SupervisoryVisit::with('site', 'staff')->where('user_id', Auth::id())->orderBy('id', 'DESC')->get();
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                
                $data = SupervisoryVisit::whereHas('site', function ($q) use ($clientIds){
                    $q->whereIn('clientname_id', $clientIds);
                })->with('staff')->where('user_id', Auth::user()->parent_id)->orderBy('id', 'DESC')->get();
 
                return view('supervisoryvisits.index', get_defined_vars());

            }

            $data = SupervisoryVisit::with('site', 'staff')->where('user_id', Auth::user()->parent_id)->orderBy('id', 'DESC')->get();
        }

        

        return view('supervisoryvisits.index', get_defined_vars());
    }

    public function create()
    {
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

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
 
                return view('supervisoryvisits.create', get_defined_vars());

            }

            $sites = sites::where('user_id',  Auth::user()->parent_id)->get();
        }

        return view('supervisoryvisits.create', get_defined_vars());
        
    }

    public function store(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'site_id' => 'required',
            'date' => 'required',
            'staff_id' => 'required',
            'visit_type' => 'required',
            'supervisor_name' => 'required',
            'time_keeping' => 'required',
            'appearnce' => 'required',
            'attitude' => 'required',
            'communication' => 'required',
        ]);

        if ($request->visit_id) {
            $data = SupervisoryVisit::find($request->visit_id);
            $activity = 'Updated';
            $desc = "Updated a supervisory vist of site";

        }else {
            $data = new SupervisoryVisit();           
            $activity = 'Added';
            $desc = "Added a supervisory vist of site";
        }

        $data->site_id = $request->site_id;
        $data->date = $request->date;
        $data->day = $request->day;
        $data->staff_id = $request->staff_id;
        $data->visit_type = $request->visit_type;
        $data->supervisor_name = $request->supervisor_name;
        $data->time_keeping = $request->time_keeping;
        $data->appearnce = $request->appearnce;
        $data->attitude = $request->attitude;
        $data->communication = $request->communication;
        $data->other_comments = $request->other_comments;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }

        if ($request->hasfile('staff_image')) {
            $img = $request->file('staff_image');
            $imgName = time() ."-". str_replace(" ", "_", $img->getClientOriginalName());
            $img->move(public_path('uploads'), $imgName);
            $data->staff_image = $imgName;
        }

        $data->save();




        $this->activityLog('Supervisory Visits', $activity, $desc, Auth::id(), $data->user_id);

        session()->flash('msg', 'Visit saved successfully');

        return redirect('supervisoryvisits/all');
        

    }

    public function show($visitId)
    {
        $data = SupervisoryVisit::with('site', 'staff')->find($visitId);
        // dd($data->toArray());

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        
        return view('supervisoryvisits.show', get_defined_vars());
    }

    public function edit($visitId)
    {
        $data = SupervisoryVisit::with('site', 'staff')->find($visitId);
        // dd($data->toArray());

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }

        $tab = Tab::where('tab_link', 'supervisoryvisits/create')->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

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

                $data = SupervisoryVisit::with('site', 'staff')->find($visitId);
                $weeks = monitoring::where('sitename_id', $data->site_id)->get();

                //selected Monitoring
                $monitoring = monitoring::where('sitename_id', $data->site_id)->where('Week_Commencing', $data->date)->first();
                // dd($monitoring);
                if ($monitoring) {
                    $days = MonitoringStaff::where('monitoring_id', $monitoring->id)->get();
                    $ids = [];
                    foreach ($days as $day) {
                        array_push($ids, $day->staff_id);
                    }
    
                    $guards = stafflistModel::find($ids);                    
                }
 
                return view('supervisoryvisits.create', get_defined_vars());

            }

            $sites = sites::where('user_id',  Auth::user()->parent_id)->get();
        }

        $data = SupervisoryVisit::with('site', 'staff')->find($visitId);
        $weeks = monitoring::where('sitename_id', $data->site_id)->get();

        //selected Monitoring
        $monitoring = monitoring::where('sitename_id', $data->site_id)->where('Week_Commencing', $data->date)->first();
        if ($monitoring) {
            $days = MonitoringStaff::where('monitoring_id', $monitoring->id)->get();
            $ids = [];
            foreach ($days as $day) {
                array_push($ids, $day->staff_id);
            }
    
            $guards = stafflistModel::find($ids);
        }

        return view('supervisoryvisits.create', get_defined_vars());
        
    }

    public function delete($visitId)
    {
        $data = SupervisoryVisit::with('site', 'staff')->find($visitId);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }

        SupervisoryVisit::find($visitId)->delete();

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;
        }

        $desc = "Deleted a Supervisory Visit of id: $visitId";
        $this->activityLog('Supervisory Visits', 'Deleted', $desc, Auth::id(), $account_id);

        return redirect()->back();
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\AssignedClient;
use Illuminate\Http\Request;
use App\Models\clients;
use App\Models\monitoring;
use App\Models\MonitoringStaff;
use App\Models\Permission;
use App\Models\stafflistModel;
use App\Models\Plan;
use App\Models\sites;
use App\Models\Tab;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class SitesController extends Controller
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
            $data=sites::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        }else {

            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                $data=sites::whereIn('clientname_id', $clientIds)->orderBy('id', 'desc')->get();


                return view('sites.index',['data'=>$data, 'tab_perm' => $tab_perm]);
            }

            $data=sites::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }

        return view('sites.index',['data'=>$data, 'tab_perm'=>$tab_perm]);
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
            $data=clients::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                $data=clients::orderBy('id', 'desc')->find($clientIds);


                return view('sites.create',['clients'=>$data, 'tab_perm' => $tab_perm]);
            }


            $data=clients::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();            
        }

        

        return view('sites.create',['clients'=>$data, 'tab_perm'=>$tab_perm]);
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
            $t_sites = sites::where('user_id', Auth::id())->count();
        }else {
            $t_sites = sites::where('user_id', Auth::user()->parent_id)->count();            
        }

        //checking subscription limit
        if ($plan->id == 1 && $plan->site_limit <= $t_sites) {
            session()->flash('error', 'Your maxmimum limit to Add sites has reached!');
            return redirect()->back();
        }

        //checking expiry date
        if ($exp_date < Carbon::now()) {
            session()->flash('error', 'Your Subscribed Plan has been Expired !');
            return redirect()->back();
        }
        
        $request->validate([
            'sitename'=>'required',
            'sitepostcode'=>'required',
        ]);
        
        $data=new sites();
        $data->clientname_id=$request->client;
        $data->sitename=$request->sitename;
        $data->sitepostcode=$request->sitepostcode;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        }else {
            $data->user_id = Auth::user()->parent_id;
        }

        $data->save();
        $client = clients::find($request->client);
        $desc = "Added New Site with name: $data->sitename, id: $data->id, of client: $client->clientname";
        $this->activityLog('Sites', 'Added', $desc, Auth::id(), $data->user_id);
        
        return redirect('sites/create')->with('msg','Site has been added');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data=sites::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        
        $monitorings = monitoring::where('sitename_id', $data->id)->get();
        
        $monitoringId = [];
        foreach ($monitorings as $monitoring) {
            array_push($monitoringId, $monitoring->id);
        }

        $shifts = MonitoringStaff::whereIn('monitoring_id', $monitoringId)->get();
        
        $staffIds = [];
        foreach ($shifts as $shift) {
            array_push($staffIds, $shift->staff_id);
        }

        $staffs = stafflistModel::with('subcontractor')->find($staffIds);
        
        return view('sites.show',['data'=>$data, 'staffs'=>$staffs]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data=sites::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }

        if (Auth::user()->parent_id == 0) {
            $sites=clients::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        }else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ( $assignedClients->count() > 0) {
                $clientIds = [];
                foreach ( $assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                $sites=clients::orderBy('id', 'desc')->find($clientIds);
 
 
                return view('sites.edit',['sites'=>$sites,'data'=>$data, 'clients'=>$data]);

            }

            $sites=clients::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();            
        }
        
        return view('sites.edit',['sites'=>$sites,'data'=>$data, 'clients'=>$data]);
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
            'sitename'=>'required',
            'sitepostcode'=>'required',
        ]);
        $data=sites::find($id);
        $data->clientname_id=$request->client;
        $data->sitename=$request->sitename;
        $data->sitepostcode=$request->sitepostcode;
        $data->save();
        $client = clients::find($request->client);
        $desc = "Updated a site, name: $data->sitename, id: $data->id, of client: $client->clientname";
        $this->activityLog('Sites', 'Updated',$desc, Auth::id(), $data->user_id);
        
        return redirect('sites/create')->with('msg','Site has been updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data = sites::with('client')->find($id);
        sites::with('monitorings')->find($id)->delete();

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;
        }


        $desc = "Deleted a site, name: $data->sitename, id: $data->id, of client: ".$data->client->clientname;

        $this->activityLog('Sites', 'Deleted', $desc, Auth::id(), $account_id);

        return redirect('sites')->with('msg','site has been removed from site list');
    }

    public function siteClinet($id)
    {
        $site = sites::with('client')->find($id);
        return $site->toArray();
    }

}
    
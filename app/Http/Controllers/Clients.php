<?php

namespace App\Http\Controllers;

use App\Models\AssignedClient;
use Illuminate\Http\Request;
use App\Models\clients as ClientsController;
use App\Models\Permission;
use App\Models\Plan;
use App\Models\Tab;
use App\Models\sites;
use App\Models\monitoring;
use App\Models\MonitoringStaff;
use App\Models\stafflistModel;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;

class Clients extends Controller
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
            $data = ClientsController::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        } else {
            //checking assigned clients of child account
            $assignedClients = AssignedClient::where('user_id', Auth::id())->get();
            if ($assignedClients->count() > 0) {

                $clientIds = [];
                foreach ($assignedClients as $client) {
                    array_push($clientIds, $client->client_id);
                }
                $data = ClientsController::orderBy('id', 'desc')->find($clientIds);

                return view('clients.index', ['data' => $data, 'tab_perm' => $tab_perm]);
            }




            $data = ClientsController::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }

        return view('clients.index', ['data' => $data, 'tab_perm' => $tab_perm]);
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

        return view('clients.create', get_defined_vars());
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
            $t_clients = ClientsController::where('user_id', Auth::id())->count();
        } else {
            $t_clients = ClientsController::where('user_id', Auth::user()->parent_id)->count();
        }

        //checking subscription limit
        if ($plan->id == 1 && $plan->client_limit <= $t_clients) {
            session()->flash('error', 'Your maxmimum limit to Add Clients has reached!');
            return redirect()->back();
        }

        //checking expiry date
        if ($exp_date < Carbon::now()) {
            session()->flash('error', 'Your Subscribed Plan has been Expired !');
            return redirect()->back();
        }


        $request->validate([
            'clientname' => 'required',
            'name' => 'required',
            'number' => 'required',
            'email' => 'required'
        ]);

        $data = new ClientsController();
        $data->clientname = $request->clientname;
        $data->name = $request->name;
        $data->number = $request->number;
        $data->email = $request->email;

        if (Auth::user()->parent_id == 0) {
            $data->user_id = Auth::id();
        } else {
            $data->user_id = Auth::user()->parent_id;
        }

        $data->save();
        
        if (Auth::user()->parent_id == 0) {
            $subusers = User::where('parent_id', Auth::id())->where('new_client', 1)->get();
        } else {
            $subusers = User::where('parent_id', Auth::user()->parent_id)->where('new_client', 1)->get();
        }
        
        foreach ($subusers as $user) {
            $assign = new AssignedClient();
            $assign->client_id = $data->id;
            $assign->user_id = $user->id;
            $assign->save();
        }

        $desc = "Added a New Client with id: $data->id, Name: $data->name ";
        $this->activityLog('Clients', 'Added', $desc, Auth::id(), $data->user_id);

        return redirect('clients/create')->with('msg', 'Data has been submitted');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $data = ClientsController::find($id);
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }

        return view('clients.show', ['data' => $data]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = ClientsController::find($id);
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        $data = ClientsController::find($id);
        return view('clients.edit', ['data' => $data]);
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
            'clientname' => 'required',
            'name' => 'required',
            'number' => 'required',
            'email' => 'required'
        ]);

        $data = ClientsController::find($id);
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        else{

        $data = ClientsController::find($id);
        $data->clientname = $request->clientname;
        $data->name = $request->name;
        $data->number = $request->number;
        $data->email = $request->email;
        $data->save();
        $desc = "Updated a Client with id: $data->id, Name $data->name ";

        $this->activityLog('Clients', 'Updated', $desc, Auth::id(), $data->user_id);

        return redirect('clients/create')->with('msg', 'Data has been amended');
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
        $data = ClientsController::find($id);
        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        $data = ClientsController::find($id);
        // dd($data->toArray());
        ClientsController::with('sites.monitorings.monitoring_staff')->find($id)->delete();

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        } else {
            $account_id = Auth::user()->parent_id;
        }
        $desc = "Deleted Client with id: $data->id, Name $data->name ";

        $this->activityLog('Clients', 'Deleted', $desc, Auth::id(), $account_id);

        return redirect('clients')->with('msg', 'Data has been deleted');
    }

    public function getShiftClients($week)
    {
        $WC = str_replace('-', '/', $week);
        if (Auth::user()->parent_id == 0) {
            $clients = ClientsController::where('user_id', Auth::id())->with(['sites.monitorings'=>function($q) use ($WC){
                $q->where('Week_Commencing', $WC);
            }])->get();
        }else{
            $clients = ClientsController::where('user_id', Auth::user()->parent_id)->with(['sites.monitorings'=>function($q) use ($WC){
                $q->where('Week_Commencing', $WC);
            }])->get();
        }
        $clients = $clients->unique('id');

        return $clients->toArray();
    }

    public function getShiftsSites($client_id)
    {
        // $WC = str_replace('-', '/', $week);
        if (Auth::user()->parent_id == 0) {
            $sites = sites::with('monitorings')->where('user_id', Auth::id())->where('clientname_id', $client_id)->get();
            // $sites = $sites->filter(function ($site) use ($WC){
            //     return $site->monitorings->contains(function ($value) use ($WC){
            //         return $value->Week_Commencing == $WC;
            //     });
            // });
        }else{
            $sites = sites::where('user_id', Auth::user()->parent_id)->where('clientname_id', $client_id)->get();
            // $sites = $sites->filter(function ($site) use ($WC){
            //     return $site->monitorings->contains(function ($value) use ($WC){
            //         return $value->Week_Commencing == $WC;
            //     });
            // });
        }

        
        return $sites->toArray();
    }

    public function getShiftsGuard($week, $siteId, $day)
    {
        $WC = str_replace('-', '/', $week);
        if ($day == 'Monday') {
            $day = 1;
        }
        elseif($day == 'Tuesday'){
            $day = 2;
        }
        elseif($day == 'Wednesday'){
            $day = 3;
        }
        elseif($day == 'Thursday'){
            $day = 4;
        }
        elseif($day == 'Friday'){
            $day = 5;
        }
        elseif($day == 'Saturday'){
            $day = 6;
        }
        else{
            $day = 7;
        }
        $monitoring = monitoring::where('sitename_id', $siteId)->where('Week_Commencing', $WC)->first();

        $shifts = MonitoringStaff::where('monitoring_id', $monitoring->id)->where('shift_day', $day)->get();

        $guards = [];
        foreach ($shifts as $shift) {
            array_push($guards, $shift->staff_id);
        }

        $staffs = stafflistModel::find($guards);

        return $staffs->toArray();
    }
}

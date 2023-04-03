<?php

namespace App\Http\Controllers;

use App\Models\AssignedClient;
use App\Models\clients;
use App\Models\Permission;
use App\Models\Role;
use App\Models\Tab;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class TeamController extends Controller
{
    public function index()
    {
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        if (Auth::user()->parent_id == 0) {
            $teams = User::with('role')->where('parent_id', Auth::id())->get();

        }else {
            $teams = User::with('role')->where('parent_id', Auth::user()->parent_id)->get();
        }

        
        return view('RolesPermissions.Team', get_defined_vars());
    }

    public function create()
    {

        if (Auth::user()->parent_id == 0) {
            $roles=Role::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        }else {
            $roles=Role::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }
        

        return view('RolesPermissions.CreateTeam', get_defined_vars());
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8',
        ]);

        $team = new User();

        $team->name = $request->name;
        $team->email = $request->email;
        $team->password = Hash::make($request->password);
        $team->user_role = $request->role;
        $team->new_client = $request->new_client;
        if (Auth::user()->parent_id == 0) {
            $team->parent_id = Auth::id();
            $clients = clients::where('user_id', Auth::id())->get();

        }else {
            $team->parent_id = Auth::user()->parent_id;
            $clients = clients::where('user_id', Auth::user()->parent_id)->get();
        }
        $team->user_type = 0;
        $team->user_plan = Auth::user()->user_plan;
        $team->requested_plan = Auth::user()->requested_plan;
        $team->subscription_date = Auth::user()->subscription_date;
        $team->save();

        $desc = "Added a Team Member of name $team->name";
        $this->activityLog('Team', 'Added', $desc, Auth::id(), $team->parent_id);
        foreach ($clients as $client) {
            $assign = new AssignedClient();
            $assign->client_id = $client->id;
            $assign->user_id = $team->id;
            $assign->save();
        }

        session()->flash('msg', 'Team Member Saved Successfully');
        return redirect('team');
    }

    public function edit($id)
    {
        $data=User::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }
        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        $team = User::find($id);
        if (Auth::user()->parent_id == 0) {
            $roles=Role::where('user_id', Auth::id())->orderBy('id', 'desc')->get();
        }else {
            $roles=Role::where('user_id', Auth::user()->parent_id)->orderBy('id', 'desc')->get();
        }
        return view('RolesPermissions.CreateTeam', get_defined_vars());
    }

    public function delete($id)
    {
        User::find($id)->delete();
        
        return redirect('team');
    }
    public function update_password_team($team_id){
        $team_detail = User::find($team_id);
        $role_name = Role::where('user_id',$team_detail->parent_id)->where('id',$team_detail->user_role)->first();
        return view('RolesPermissions.updatePassword',get_defined_vars());
    }
    public function proccess_update(Request $request){
        $request->validate([
            'password' => 'required | min:8'
        ]);
        // dd($request->all());
        $find_user = User::find($request->id);
        $find_user->password = Hash::make($request->password);
        $find_user->save();
        return redirect('team');
    }
}

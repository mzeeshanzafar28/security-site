<?php

namespace App\Http\Controllers;

use App\Models\AssignedClient;
use App\Models\clients;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AssignedClientController extends Controller
{
    public function index($userId)
    { 
        // if()
        // if (Auth::user()->parent_id == 0) {
        //     $teams = User::with('role')->where('parent_id', Auth::id())->get();

        // }else {
        //     $teams = User::with('role')->where('parent_id', Auth::user()->parent_id)->get();
        // }
        // $check = false;
        // foreach($teams as $team){
        //     if($team->parent_id != Auth::id()){
        //         return redirect()->back();
        //     }
        // }
        $user = User::find($userId);
        if($user->parent_id != Auth::id()){
            return redirect()->back();
        }
        $assignedClients = AssignedClient::where('user_id', $userId)->get();

        if (Auth::user()->parent_id == 0) {
            $clients = clients::where('user_id', Auth::id())->get();
        }else {
            $clients = clients::where('user_id', Auth::user()->parent_id)->get();
        }


        return view('assignclient.index', get_defined_vars());
        
    }

    public function assignClient($userId, $clientId)
    {
       
        $assign = new AssignedClient();
        $assign->user_id = $userId;
        $assign->client_id = $clientId;
        $assign->save();

        session()->flash('msg', 'client assigned to user');

        return redirect()->back();

    }

    public function unAssignClient($userId , $clientId)
    {
        AssignedClient::where('user_id', $userId)->where('client_id', $clientId)->delete();

        session()->flash('msg', 'client unassigned from user');
        return redirect()->back();
    }
}

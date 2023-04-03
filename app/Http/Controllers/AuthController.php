<?php

namespace App\Http\Controllers;

use App\Models\activities;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    public function registerPage()
    {
        return view('register');
        
    }

    public function register(Request $request)
    {
        // dd($request->all());
        $request->validate([
            'name' => 'required',
            'company_name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8|confirmed',
        ]);

        $user = New User();
        $user->name = $request->name;
        $user->company_name = $request->company_name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->user_type = 0;
        $user->subscription_date = Carbon::now()->format('Y-m-d');
        $user->save();

        //creating default activities for new users
        $activities = [
            'Missed Patrol',
            'Missed Checkcall',
            'Service Complaint - High',
            'Service Complaint - Medium',
            'Service Complaint - Low',
            'Loss of Hours -> Lateness',
            'Loss of Hours -> Blow out',
        ];

        foreach ($activities as $activity) {
            $act = new activities();
            $act->Activity_Type = $activity;
            $act->Activity_Weight = 10;
            $act->user_id = $user->id;
            $act->save();
        }

        return redirect('/login');
    }

    public function loginPage()
    {
        return view('login');
    }

    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = [
            'email' => $request->email,
            'password' => $request->password,
        ];
        // dd($request->all());
        $checkUser = User::where('email', $request->email)->first();
        if ($checkUser && $checkUser->user_type == 0 ) {
            if ($checkUser->status == 1) {
                if (Auth::attempt($user)) {
                    $user = User::find(Auth::id());
                    $current_timestamp =  Carbon::now()->format('Y-m-d H:i:s');
                    $user->last_login = $current_timestamp ;
                    $user->save();
                    session()->flash('msg', 'login successfull');
                    return redirect('/');
                }else{
                    session()->flash('msg', 'Invalid Password');
                    return redirect()->back();
                }
            }else {
            session()->flash('msg', 'User is Blocked');
            return redirect()->back();
            }
        }else {
            session()->flash('msg', 'Invalid Email');
            return redirect()->back();
        }
    }

    public function logout()
    {
        
        auth()->logout();
    
        return redirect('/login');
        
    }
}

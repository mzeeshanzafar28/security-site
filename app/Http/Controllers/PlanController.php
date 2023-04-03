<?php

namespace App\Http\Controllers;

use App\Models\activities;
use App\Models\clients;
use App\Models\ExternalMeetingsModel;
use App\Models\InternalMeetingsModel;
use App\Models\monitoring;
use App\Models\Plan;
use App\Models\sites;
use App\Models\stafflistModel;
use App\Models\subcontractorModel;
use App\Models\SupervisoryVisit;
use App\Models\supervisoryvisitsModel;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PlanController extends Controller
{
    public function index()
    {
        $plans = Plan::all();

        return view('plans.index', get_defined_vars());
    }

    public function myPlan()
    {
        $plan = Plan::find(Auth::user()->user_plan);
        $sub_date = Auth::user()->subscription_date;
        if (Auth::user()->parent_id == 0) {
            $t_clients = clients::where('user_id', Auth::id())->count();
            $t_sites = sites::where('user_id', Auth::id())->count();
            $t_staffs = stafflistModel::where('user_id', Auth::id())->count();
            $t_subcoontractors = subcontractorModel::where('user_id', Auth::id())->count();
            $t_monitorings = monitoring::where('user_id', Auth::id())->count();
            $t_ex_meetings = ExternalMeetingsModel::where('user_id', Auth::id())->count();
            $t_in_meetings = InternalMeetingsModel::where('user_id', Auth::id())->count();
            $t_supervisor = SupervisoryVisit::where('user_id', Auth::id())->count();
            $t_activities = activities::where('user_id', Auth::id())->count();    
        }else {
            $t_clients = clients::where('user_id', Auth::user()->parent_id)->count();
            $t_sites = sites::where('user_id', Auth::user()->parent_id)->count();
            $t_staffs = stafflistModel::where('user_id', Auth::user()->parent_id)->count();
            $t_subcoontractors = subcontractorModel::where('user_id', Auth::user()->parent_id)->count();
            $t_monitorings = monitoring::where('user_id', Auth::user()->parent_id)->count();
            $t_ex_meetings = ExternalMeetingsModel::where('user_id', Auth::user()->parent_id)->count();
            $t_in_meetings = InternalMeetingsModel::where('user_id', Auth::user()->parent_id)->count();
            $t_supervisor = SupervisoryVisit::where('user_id', Auth::user()->parent_id)->count();
            $t_activities = activities::where('user_id', Auth::user()->parent_id)->count();
        }
        
        // dd(get_defined_vars());

        return view('plans.myPlan', get_defined_vars());

    }

    public function requestPlan($id, $name)
    {
        $user = User::find(Auth::id());
        $user->requested_plan = $id;
        $user->save();

        if ($user->parent_id == 0) {
            $children = User::where('parent_id', $user->id)->get();
        }else {
            $children = User::where('parent_id', $user->parent_id);
            $parent = User::find($user->parent_id);
            $parent->requested_plan = $id;
            $parent->save();
        }

        foreach ($children as $child) {
            $child->requested_plan = $id;
            $child->save();
        }

        session()->flash('msg', 'Subscription Plan Requested');

        return redirect()->back();
    }



    public function subscibe(Request $request)
    {
        // dd($request->all());
        $plan = Plan::find($request->plan_id);
        $user = User::find(Auth::id());
        try {
            $user->createOrGetStripeCustomer();
            $payment = $user->charge($plan->price * 100, $request->payment_method_id);
            $paymentId = $payment->id;
            $payment = $payment->asStripePaymentIntent();

            $user->user_plan = $plan->id;
            $user->is_paid = 1;
            $user->subscription_date = Carbon::now()->format('Y-m-d');
            $user->save();

            if ($user->parent_id == 0) {
                $children = User::where('parent_id', $user->id)->get();
            }else {
                $parent = User::find($user->parent_id);
                $parent->user_plan = $plan->id;
                $parent->is_paid = 1;
                $parent->subscription_date = Carbon::now()->format('Y-m-d');
                $parent->save();
                $children = User::where('parent_id', $user->parent_id)->get();
            }

            foreach ($children as $child) {
                $child->user_plan = $plan->id;
                $child->is_paid = 1;
                $child->subscription_date = Carbon::now()->format('Y-m-d');
                $child->save();
            }

            // session()->flash('msg', 'Plan Subscribed Successfully');

            return response()->json(['message', 'plan subscribed']);
        } catch (\Throwable $e) {
            return response()->json($e->getMessage(), 402);
        }

    }
}

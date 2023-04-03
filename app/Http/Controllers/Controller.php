<?php

namespace App\Http\Controllers;

use App\Models\ActivityLog;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Auth;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function activityLog($module, $activity, $description, $perform_by, $user_id)
    {
        $log = new ActivityLog();

        $log->module = $module;
        $log->activity = $activity;
        $log->description = $description;
        $log->perform_by = $perform_by;
        $log->user_id = $user_id;
        $log->save();
    }
}

<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Clients;
use App\Http\Controllers\SitesController;
use App\Http\Controllers\BannedController;
use App\Http\Controllers\activitiesController;
use App\Http\Controllers\monitoringController;
use App\Http\Controllers\activitiesoccuredController;
use App\Http\Controllers\ActivityLogController;
use App\Http\Controllers\AssignedClientController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ComplainController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ExternalmeetingsController;
use App\Http\Controllers\InternalmeetingsController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\PlanController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SIAController;
use App\Http\Controllers\stafflist;
use App\Http\Controllers\subcontractorController;
use App\Http\Controllers\SupervisoryVisitController;
use App\Http\Controllers\TeamController;
use App\Http\Controllers\IncidentReportController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Registration Routes
Route::get('/register',[ AuthController::class, 'registerPage']);
Route::post('/user/register',[ AuthController::class, 'register']);

//Login Routes
Route::get('/login',[ AuthController::class, 'loginPage'])->name('login');
Route::post('/user/login',[ AuthController::class, 'login']);

//logout
Route::get('/logout', [AuthController::class, 'logout']);

Route::middleware(['auth:sanctum', 'verified'])->group(function () {
    Route::get('/', [DashboardController::class, 'index']);
    // clients resource
    Route::get('clients/{id}/delete', [Clients::class,'destroy']);
    Route::resource('clients',Clients::class);
            
    // sites resource
    Route::get('sites/{id}/delete', [SitesController::class,'destroy']);
    Route::resource('sites',SitesController::class);

    Route::get('/get-site-client-name/{id}', [SitesController::class, 'siteClinet']);
            
    // clients resource
    Route::get('banned/{id}/delete', [BannedController::class,'destroy']);
    Route::resource('banned',BannedController::class);
            
    // activities resource
    Route::get('activities/{id}/delete', [activitiesController::class,'destroy']);
    Route::resource('activities',activitiesController::class);
            
    // monitoring resource
    Route::get('monitoring/{id}/delete', [monitoringController::class,'destroy']);
    Route::resource('monitoring',monitoringController::class);

    //date filter on monitoring
    Route::get('/monitoring/week/filter', [monitoringController::class, 'monitoringFilter']);

    //monitorings for specific sites
    Route::get('/get-monitoring/{siteId}', [monitoringController::class, 'sitesMonitoring']);
    //shifts for specific monitoring
    Route::get('monitoring/get-shifts/{monitoringId}', [monitoringController::class, 'monitoringShifts']);
    Route::get('monitorings/get-shifts-days/{week}/{site_id}',[monitoringController::class, 'monitoringsShifts']);
    Route::get('shifts/get-shift-staffs/{week}/{site_id}/{day}',[monitoringController::class, 'getShiftStaffs']);
    //edit delete shifts
    Route::get('monitoring/shift/{id}/delete', [monitoringController::class, 'deleteShift']);
    Route::post('/monitoring/shift/update', [monitoringController::class, 'updateShift']);

    //get selected shifts to print
    Route::get('/get-monitorings-shifts/{ids}', [monitoringController::class, 'getSelectedShifts']);
            
    // Internal Meetings resource
    Route::get('meetings/internalmeetings/{id}/delete', [InternalmeetingsController::class,'destroy']);
    Route::resource('meetings/internalmeetings',InternalmeetingsController::class);
            
    // External Meetings resource
    Route::get('meetings/externalmeetings/{id}/delete', [ExternalmeetingsController::class,'destroy']);
    Route::resource('meetings/externalmeetings',ExternalmeetingsController::class);
            
    // SupervisoryVisits resource
    Route::get('supervisoryvisits/{id}/delete', [SupervisoryVisitController::class,'destroy']);
    Route::get('supervisoryvisits/all',[SupervisoryVisitController::class, 'index']);
    Route::get('supervisoryvisits/create',[SupervisoryVisitController::class, 'create']);
    Route::post('supervisoryvisits/store', [SupervisoryVisitController::class, 'store']);
    Route::get('supervisory-visits/{visitId}/show', [SupervisoryVisitController::class, 'show']);
    Route::get('supervisory-visits/{visitId}/edit', [SupervisoryVisitController::class, 'edit']);
    Route::get('supervisory-visits/{visitId}/delete', [SupervisoryVisitController::class, 'delete']);
            
    // Staff resource
    Route::get('staff/stafflist/{id}/delete', [stafflist::class,'destroy']);
    Route::resource('staff/stafflist',stafflist::class);
    Route::post('add_documents',[stafflist::class,'add_documents']);
    Route::get('download_document/{id}',[stafflist::class,'download_document']);
    Route::get('delete_document/{id}',[stafflist::class,'delete_document']);
            
    // Sub-contractor resource
    Route::get('staff/subcontractors/{id}/delete', [subcontractorController::class,'destroy']);
    Route::resource('staff/subcontractors',subcontractorController::class);

    //subcont-staff
    Route::get('/get-sub-contractor-staff/{id}',[subcontractorController::class, 'getStaff']);
        
    // occured activites resource
    Route::get('occuredactivites/delete/{id}', [activitiesoccuredController::class,'destroy']);
    Route::resource('occuredactivites',activitiesoccuredController::class);

    //Roles 
    Route::get('roles', [RoleController::class, 'index']);
    Route::get('roles/create', [RoleController::class, 'create']);
    Route::get('role/{id}/edit', [RoleController::class, 'edit']);
    Route::post('roles/save', [RoleController::class, 'save']);
    Route::get('role/{id}/delete', [RoleController::class, 'delete']);
    //show-hide supplier code
    Route::get('hide-supplier-code/{id}', [RoleController::class, 'hideSupplier']);
    Route::get('show-supplier-code/{id}', [RoleController::class, 'showSupplier']);

    // Permissions
    Route::get('manage-permissions/{id}', [PermissionController::class, 'index']);
    Route::post('permissions/save-permissions', [PermissionController::class, 'save']);

    //Teams
    Route::get('team', [TeamController::class, 'index']);
    Route::get('team/create', [TeamController::class, 'create']);
    Route::post('team/save', [TeamController::class, 'store']);
    Route::get('team/{id}/edit', [TeamController::class, 'edit']);
    Route::get('team/{id}/delete', [TeamController::class, 'delete']);

    //complain Routes
    Route::get('complaints', [ComplainController::class, 'index']);
    Route::get('complaint/create', [ComplainController::class, 'create']);
    Route::get('complaint/{id}/edit', [ComplainController::class, 'edit']);
    Route::post('complaint/save', [ComplainController::class, 'store']);
    Route::get('complaint/{id}/{value}/status', [ComplainController::class, 'updateStatus']);
    Route::get('complaint/{id}/delete', [ComplainController::class, 'delete']);

    // Subscription Plans
    Route::get('subscription/plans', [PlanController::class, 'index']);
    Route::get('subscription/plans/subscribe/{id}/{name}', [PlanController::class, 'requestPlan']);
    Route::get('plans/my-plan', [PlanController::class, 'myPlan']);

    Route::post('plan/subscribe', [PlanController::class, 'subscibe']);

    //Activity Log
    Route::get('activity-log', [ActivityLogController::class, 'index']);

    //Assign Client
    Route::get('team/{team_id}/manage-clients', [AssignedClientController::class, 'index']);
    Route::get('team/{team_id}/update-password', [TeamController::class, 'update_password_team']);
    Route::post('team/proccess', [TeamController::class, 'proccess_update']);
    
    Route::get('team/{team_id}/assign/{clientId}', [AssignedClientController::class, 'assignClient']);
    Route::get('team/{team_id}/un-assign/{clientId}', [AssignedClientController::class, 'unAssignClient']);

    Route::get('/sia-test', [SIAController::class, 'siaTest']);
    Route::get('/check-sia', [SIAController::class, 'index']);
    Route::post('/check-sia', [SIAController::class, 'checkCSV']);

    //Incident Report
    Route::get('incident-report/all', [IncidentReportController::class, 'index']);
    Route::get('incident-report/create', [IncidentReportController::class, 'create']);
    Route::post('incident-reports/store', [IncidentReportController::class, 'store']);
    Route::get('incident-report/show/{id}', [IncidentReportController::class, 'show']);
    Route::get('incident-report/delete/{id}', [IncidentReportController::class, 'delete']);
    //
    Route::get('/get-guard-data/{id}', [stafflist::class, 'getData'] );
    Route::get('monitorings/get-shifts-clients/{week}', [Clients::class, 'getShiftClients']);
    Route::get('monitorings/get-shifts-sites/{client}', [Clients::class, 'getShiftsSites']);
    Route::get('monitorings/get-shifts-guards/{week}/{shitf}/{day}', [Clients::class, 'getShiftsGuard']);
});
    
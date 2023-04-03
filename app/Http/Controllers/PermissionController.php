<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Role;
use App\Models\Tab;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PermissionController extends Controller
{
    public function index($id)
    {
        $role = Role::find($id);
        $tabs = Tab::all();
        $perm = Permission::where('role_id',$role->id)->get();

        return view('RolesPermissions.Permissions', get_defined_vars());
    }

    public function save(Request $request)
    {
        $old_perm = Permission::where('role_id', $request->roleId)->delete();
        foreach($request->checked_tabs as $tab){
                $per = new Permission();
            $per->role_id = $request->roleId;
            $per->tab_id = $tab;
            if($request->checked_pers){
                foreach($request->checked_pers as $tabs=>$perm){
                    if($tabs == $tab.'-add'){
                        $per->can_create = $perm;
                    }
                    if($tabs == $tab.'-update'){
                        $per->can_update = $perm;
                    }
                    if($tabs == $tab.'-delete'){
                        $per->can_delete = $perm;
                    }
                }
            }
            
            $per->save();
        }

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;
        }
        $role = Role::find($request->roleId);
        $desc = "Updated Permissions for Role: $role->name";
        $this->activityLog('Roles Permissions', 'Updated', $desc, Auth::id(), $account_id);

        session()->flash('success', 'Permissions Updated successfully');
        return redirect('roles');
    }
}

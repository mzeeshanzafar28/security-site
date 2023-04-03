<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Role;
use App\Models\Tab;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RoleController extends Controller
{
    public function index()
    {
        $tab = Tab::where('tab_link', request()->path())->first();
        $tab_perm = Permission::where('tab_id', $tab->id)->where('role_id', Auth::user()->user_role)->first();

        if (Auth::user()->parent_id == 0) {
            $roles=Role::where('user_id', Auth::id())->get();
        }else {
            $roles=Role::where('user_id', Auth::user()->parent_id)->get();
        }

        

        return view('RolesPermissions.Roles', get_defined_vars());
    }

    public function create()
    {
        return view('RolesPermissions.CreateRole');
    }

    public function edit($id)
    {
        $data=role::find($id);

        if (Auth::user()->user_role == 0) {
            $main_user_id = Auth::user()->id;
        }else {
            $main_user_id = Auth::user()->parent_id;
        }

        if ($main_user_id != $data->user_id) {
            return redirect()->back();
        }
        $role = Role::find($id);

        return view('RolesPermissions.CreateRole', get_defined_vars());
    }

    public function save(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        if ($request->id) {
            $role = Role::find($request->id);
            $activtiy = 'Updated';
            $desc = "updated Role with id: $role->id, name: $role->name ";
        }else {
            $role = new Role();
            $activtiy = 'Added';
            $desc = "Added Role with of name: $request->name ";
        }

        $role->name = $request->name;

        if (Auth::user()->parent_id == 0) {
            $role->user_id = Auth::id();
        }else {
            $role->user_id = Auth::user()->parent_id;
        }
        $role->save();

        $this->activityLog('Roles', $activtiy, $desc, Auth::id(), $role->user_id);

        session()->flash('msg', 'Role Saved Successfully');

        return redirect('/roles');
    }

    public function delete($id)
    {
        $role =  Role::find($id);
        Role::find($id)->delete();

        if (Auth::user()->parent_id == 0) {
            $account_id = Auth::id();
        }else {
            $account_id = Auth::user()->parent_id;
        }
        $desc = "Deleted Role of Name: $role->name, id: $role->id";
        $this->activityLog('Roles', 'Deleted', $desc, Auth::id(), $account_id);

        session()->flash('msg', 'Role Deleted Successfully!');

        return redirect()->back();
    }

    public function hideSupplier($id)
    {
        $role = Role::find($id);
        $role->see_code = 0;
        $role->save();

        return redirect()->back();
    }

    public function showSupplier($id)
    {
        $role = Role::find($id);
        $role->see_code = 1;
        $role->save();

        return redirect()->back();
    }
}

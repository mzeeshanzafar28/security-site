@extends('layout')
@section('title','Steel Toe | Roles')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Roles 
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('roles/create')}}" class="float-end">Add New</a>	
		@endif
		
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Role Name</th>
					<th>Manage Permissions</th>
					<th>Supplier Code</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>Role Name</th>
					<th>Manage Permissions</th>
					<th>Supplier Code</th>
					<th>Actions</th>
				</tr>
			</tfoot>
			<tbody>
				@if($roles)
				@foreach($roles as $role)
				<tr>
					<td>{{$role->name}}</td>
					<td>
                        <a href="{{url('manage-permissions/'.$role->id)}}" class="btn btn-warning btn-sm">Manage Permissions</a>
                    </td>
					<td>
						@if ($role->see_code == 0)
                        	<a href="{{url('show-supplier-code/'.$role->id)}}" class="btn btn-danger btn-sm">Hidden</a>
						@endif
						@if ($role->see_code == 1)
                        	<a href="{{url('hide-supplier-code/'.$role->id)}}" class="btn btn-success btn-sm">Visible</a>
						@endif
                    </td>
					<td>
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
							<a href="{{url('role/'.$role->id.'/edit')}}" class="btn btn-info btn-sm">Update</a>	
						@endif
						
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_delete == 1)
							<a onclick="return confirm('Are you sure to delete this data?')" href="{{url('role/'.$role->id.'/delete')}}" class="btn btn-danger btn-sm">Delete</a>
						@endif
					</td>
				</tr>
				@endforeach
				@endif
			</tbody>
		</table>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('/js/script.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

@endsection
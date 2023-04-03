@extends('layout')
@section('title','Steel Toe | Staff List')
@section('content')
@php
    use App\Models\Role;
@endphp
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Staff List 
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('staff/stafflist/create')}}" class="float-end">Add New</a>
		@endif
	</div>
	<div class="card-body">
		<table id="datatablesSimple" style="width:100%">
			<thead>
				<tr>
				    <th>PIN</th>
					<th>Staff Name</th>
					<th>Position</th>
					<th>Phone No</th>
					<th>SIA No.</th>
					<th>SIA Expiry Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				@if($data)
				@foreach($data as $d)
				<tr>
				    <td>{{$d->id}}</td>
					<td>{{$d->staff_name}}
						@php
							$role = Role::find(auth()->user()->user_role);
						@endphp
						@if(isset($d->subcontractor->subcontractor_code) && isset($role) && $role->see_code == 1)
						({{$d->subcontractor->subcontractor_code}})
						@endif</td>
					<td>{{$d->staff_position}}</td>
					<td>{{$d->staff_phone}}</td>
					<td>{{$d->staff_SIA}}</td>
					<td>{{$d->staff_SIA_expiry}}</td>
					
					<td>
						<a href="{{url('staff/stafflist/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a>
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
							<a href="{{url('staff/stafflist/'.$d->id.'/edit')}}" class="btn btn-info btn-sm">Update</a>	
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
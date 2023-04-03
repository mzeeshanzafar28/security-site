@extends('layout')
@section('title','Steel Toe | Team')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Team 
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('team/create')}}" class="float-end">Add New</a>						
		@endif
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Role</th>
					<th>Last Login</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tfoot>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Role</th>
					<th>Last Login</th>
					<th>Actions</th>
				</tr>
			</tfoot>
			<tbody>
				@if($teams)
				@foreach($teams as $team)
				<tr>
					<td>{{$team->name}}</td>
					<td>{{$team->email}}</td>
					<td>{{isset($team->role) ? $team->role->name : ''}}</td>
					@if($team->last_login != null)
					<?php
						$date = date_create($team->last_login);
						$date_format = date_format($date, "d-M-y h:i:s")
					?>
					<td>{{$date_format}} ({{\Carbon\Carbon::parse($team->last_login)->diffForHumans()}})</td>
					@else 
					<td></td>
					@endif
					<td>
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
							<a href="{{url('team/'.$team->id.'/manage-clients')}}" class="btn btn-warning btn-sm">Manage Clients</a>
							<a href="{{url('team/'.$team->id.'/update-password')}}" class="btn btn-info  btn-sm">Update Password</a>
							
						@endif
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_delete == 1)
							<a onclick="return confirm('Are you sure to delete this data?')" href="{{url('team/'.$team->id.'/delete')}}" class="btn btn-danger btn-sm">Delete</a>	
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
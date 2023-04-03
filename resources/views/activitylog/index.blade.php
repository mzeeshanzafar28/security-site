@extends('layout')
@section('title','Steel Toe | Activity Log')
@section('content')

<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Activity Log 
		{{-- @if ($tab_perm->can_create == 0)
			<a href="{{url('clients/create')}}" class="float-end">Add New</a>
		@endif --}}
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Module</th>
					<th>Activity</th>
					<th>Description</th>
					<th>User</th>
                    <th>Time</th>
					
				</tr>
			</thead>
			
			<tbody>
				@if($data)
				@foreach($data as $d)
				<tr>
					<td>{{$d->module}}</td>
					<td>{{$d->activity}}</td>
					<td>{{$d->description}}</td>
					<td>{{$d->user ? $d->user->name : ''}}</td>
					<td>{{$d->created_at}}</td>
					{{-- <td>{{$d->email}}</td>
					<td>
						<a href="{{url('clients/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a>
						@if ($tab_perm->can_update == 1)
							<a href="{{url('clients/'.$d->id.'/edit')}}" class="btn btn-info btn-sm">Update</a>
						@endif
						@if ($tab_perm->can_delete == 1)
							<a onclick="return confirm('Are you sure to delete this data?')" href="{{url('clients/'.$d->id.'/delete')}}" class="btn btn-danger btn-sm">Delete</a>
						@endif
					</td> --}}
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
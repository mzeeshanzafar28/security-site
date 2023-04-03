@extends('layout')
@section('title','Steel Toe | External Meetings')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		External Meetings List
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('meetings/externalmeetings/create')}}" class="float-end">Add New</a>			
		@endif
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Meeting Date and Time</th>
					<th>Attendees</th>
					<th>Meeting Purpose</th>
					<th>Meeting Minutes</th>
					<th>Meeting Outcome</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				@if($data)
				@foreach($data as $d)
				<tr>
					<td>{{$d->Meeting_Date_time}}</td>
					<td>{{$d->Meeting_attendees}}</td>
					<td>{{Str::limit($d->Meeting_Title, 100)}}</td>
					<td>{{Str::limit($d->Meeting_minutes, 400)}}</td>
					<td>{{Str::limit($d->Meeting_outcomes, 400)}}</td>
					<td>
						<a href="{{url('meetings/externalmeetings/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a>

						@if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)							
							<a href="{{url('meetings/externalmeetings/'.$d->id.'/edit')}}" class="btn btn-info btn-sm">Update</a>
						@endif
						
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_delete == 1)
							<a onclick="return confirm('Are you sure to delete this data?')" href="{{url('meetings/externalmeetings/'.$d->id.'/delete')}}" class="btn btn-danger btn-sm">Delete</a>	
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
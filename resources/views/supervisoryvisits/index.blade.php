@extends('layout')
@section('title','Steel Toe | Supervisory Visits')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Supervisory Visits
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('supervisoryvisits/create')}}" class="float-end">Add New</a>
		@endif
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Site Name</th>
					<th>Week of Visit</th>
					<th>Day of Visit</th>
					<th>Staff Name</th>
					<th>Visit Type</th>
					<th>Supervisor Name</th>
                    <th></th>
				</tr>
			</thead>
			<tbody>
				@if($data)
				@foreach($data as $d)
				<tr>
					<td>{{$d->site->sitename ?? ''}}</td>
					{{-- <td></td> --}}
					<td>{{$d->date}}</td>
					<td>{{$d->day}}</td>
					<td>{{$d->staff->staff_name ?? ''}}</td>
					<td>{{$d->visit_type}}</td>
					<td>{{$d->supervisor_name}}</td>
					
					
					<td>
						<a href="{{url('supervisory-visits/'.$d->id.'/show')}}" class="btn btn-warning btn-sm">Show</a>

						@if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
							<a href="{{url('supervisory-visits/'.$d->id.'/edit')}}" class="btn btn-info btn-sm">Update</a>	
						<a onclick="return confirm('Are you sure to delete this data?')" href="{{url('supervisory-visits/'.$d->id.'/delete')}}" class="btn btn-danger btn-sm">Delete</a>
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
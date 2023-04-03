@extends('layout')
@section('title','Steel Toe | Incident Report')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Incident Report
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('incident-report/create')}}" class="float-end">Add New</a>
		@endif
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Client Name</th>
					<th>Site Name</th>
					<th>Week Commencing</th>
					<th>Day of Incident</th>
					<th>Guard Name</th>
					<th>Report Date</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
                
				@if($data)
				@foreach($data as $d)
				<tr>
					<td>
						@php
							
						@endphp
						{{$d->client ? $d->client->clientname : ''}}
					</td>
					<td>{{$d->site ? $d->site->sitename:''}}</td>
					<td>{{$d->Week_Commencing}}</td>
					<td>{{$d->shift_day}}</td>
					<td>{{$d->staff ? $d->staff->staff_name : ''}}</td>
					<td>{{$d->report_date}}</td>
					{{-- <td></td>
					<td></td>
					 --}}
					
					<td>
						<a href="{{URL::to('incident-report/show/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a>

						@if (auth()->user()->parent_id == 0 || $tab_perm->can_delete == 1)
						<a onclick="return confirm('Are you sure to delete this data?')" href="{{URL::to('incident-report/delete/'.$d->id)}}" class="btn btn-danger btn-sm">Delete</a>
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
@extends('layout')
@section('title','Steel Toe | Sub-contractor List')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Sub-contractor List
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('staff/subcontractors/create')}}" class="float-end">Add New</a>	
		@endif
		
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Sub-contractor Name</th>
					<th>Short Code</th>
					<th>Services</th>
					<th>Email Address</th>
					<th>Phone Number</th>
					<th>Coverage Areas</th>
					<th>Registered Address</th>
					<th>Charge Rate</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				@if($data)
				@foreach($data as $d)
				<tr>
					<td>{{$d->subcontractor_name}}</td>
					<td>{{$d->subcontractor_code}}</td>
					<td>{{$d->subcontractor_services}}</td>
					<td>{{$d->subcontractor_email}}</td>
					<td>{{$d->subcontractor_phone}}</td>
					<td>{{$d->subcontractor_coveragearea}}</td>
					<td>{{$d->subcontractor_address}}</td>
					<td>{{$d->subcontractor_payrate}}</td>
					<td>
						<a href="{{url('staff/subcontractors/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a>
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_update)
							<a href="{{url('staff/subcontractors/'.$d->id.'/edit')}}" class="btn btn-info btn-sm">Update</a>	
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
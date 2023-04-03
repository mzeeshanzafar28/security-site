@extends('layout')
@section('title','Steel Toe | Activity List')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Activity List 
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Activity Name</th>
					<th>Activity Weightage</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				@if($data)
				@foreach($data as $d)
				<tr>
					<td>{{$d->Activity_Type}}</td>
					<td>{{$d->Activity_Weight}}</td>
					<td>
						<a href="{{url('activities/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a>
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
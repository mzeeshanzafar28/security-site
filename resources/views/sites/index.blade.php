@extends('layout')
@section('title','Steel Toe | Sites List')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Sites List
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('sites/create')}}" class="float-end">Add New</a>
		@endif
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Customer Name</th>
					<th>Site Name</th>
					<th>Postcode</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				@if($data)
				@foreach($data as $d)
				<tr>
					<td>{{$d->client->clientname ?? ''}}</td>
					<td>{{$d->sitename}}</td>
					<td>{{$d->sitepostcode}}</td>
					<td>
						<a href="{{url('sites/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a>
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
							<a href="{{url('sites/'.$d->id.'/edit')}}" class="btn btn-info btn-sm">Update</a>
						@endif

						@if (auth()->user()->parent_id == 0 || $tab_perm->can_delete == 1)
						<a onclick="return confirm('Are you sure to delete this data?')" href="{{url('sites/'.$d->id.'/delete')}}" class="btn btn-danger btn-sm">Delete</a>
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
@extends('layout')
@section('title','Steel Toe | Banned Staff List')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Banned Staff List 
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create)
			<a href="{{url('banned/create')}}" class="float-end">Add New</a>	
		@endif
		
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Staff Name</th>
					<th>SIA License Number</th>
					<th>Reason of Ban</th>
					<th>Date and Time of Ban</th>
				</tr>
			</thead>
			<tfoot>
<!--			<tr>-->
<!--				<th>Staff Name</th>-->
<!--				<th>SIA License Number</th>-->
<!--				<th>Reason of Ban</th>-->
<!--				<th>Date and Time of Ban</th>-->
<!--			</tr>-->
			</tfoot>
			<tbody>
				@if($data)
				@foreach($data as $d)
				<tr>
					<td>{{ucfirst(trans("$d->Staff_Name"))}}</td>
					<td>{{$d->SIA_License_Number}}</td>
					<td>{{ucfirst(trans("$d->Reason_of_Ban"))}}</td>
					<td>{{$d->created_at}}</td>
					<td>
						<a href="{{url('banned/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a>

						@if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
							<a href="{{url('banned/'.$d->id.'/edit')}}" class="btn btn-info btn-sm">Update</a>	
						@endif
						
						@if (auth()->user()->parent_id == 0 || $tab_perm->can_delete == 1)
							<a onclick="return confirm('Are you sure to delete this data?')" href="{{url('banned/'.$d->id.'/delete')}}" class="btn btn-danger btn-sm">Delete</a>
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
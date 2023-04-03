@extends('layout')
@section('title','Steel Toe | Edit Banned Staff')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Edit Banned Staff List
		<a href="{{url('banned')}}" class="float-end">View All</a>
	</div>
	<div class="card-body">
		
		@if($errors->any())
			@foreach($errors->all() as $error)
				<p class="text-danger">{{$error}}</p>
				@endforeach
		@endif
		
		@if(Session::has('msg'))
		<p class="text-sucess">{{session('msg')}}</p>
		@endif
		<form method="post" action="{{url('banned/'.$data->id)}}">
			@method('put')
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Staff Name</th>
				<td>
					<input type="text" value="{{$data->Staff_Name}}" name="Staff_Name" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>SIA License Number</th>
				<td>
					<input type="text" value="{{$data->SIA_License_Number}}" name="SIA_License_Number" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Reason of Ban</th>
				<td>
					<div class="form-group">
						<textarea class="form-control" rows="5" name="Reason_of_Ban" value="{{$data->Reason_of_Ban}}"></textarea>
					</div>
				</td>
			</tr>
			<tr>
				<th>Date and Time of Ban</th>
				<td>
					<input type="text" value="{{$data->created_at}}" name="created_at" class="form-control" />
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="btn btn-primary" value="Submit" />
				</td>
				
			</tr>

			</table>
		</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('/js/script.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

@endsection
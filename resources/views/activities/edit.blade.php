@extends('layout')
@section('title','Steel Toe | Activity Edit')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Activities Edit
		<a href="{{url('activities')}}" class="float-end">View All</a>
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
		<form method="post" action="{{url('activities/'.$data->id)}}">
			@method('put')
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Activity Name</th>
				<td>
					<select name="Activity_Type" class="form-control">
						<option value="">-- Select Activity Type --</option>
						<option value="{{$data->Activity_Type}}" {{$data->id == $data->id ? 'selected' : ''}}>{{$data->Activity_Type}}</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>Activity Weightage</th>
				<td>
					<input type="text" class="form-control" name="Activity_Weight" value="{{$data->Activity_Weight}}">
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
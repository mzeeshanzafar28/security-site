@extends('layout')
@section('title','Steel Toe | Activity Add')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Activities Create
		<a href="{{url('activities')}}" class="float-end">View All</a>
	</div>
	<div class="card-body">
		
		@if($errors->any())
			@foreach($errors->all() as $error)
				<p class="text-danger">{{$error}}</p>
				@endforeach
		@endif

		@if(Session::has('error'))
		<p class="text-danger">{{session('error')}}</p>
		@endif
		
		@if(Session::has('msg'))
		<p class="text-sucess">{{session('msg')}}</p>
		@endif
		<form method="post" action="{{url('activities')}}">
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Activity Name</th>
				<td>
					<div class="form-group">
						<label for="Activity_Type">Select list:</label>
						<select class="form-control" name="Activity_Type">
							<option id="1">Loss of Hours -> Blow out</option>
							<option id="2">Loss of Hours -> Lateness</option>
							<option id="3">Service Complaint - Low</option>
							<option id="4">Service Complaint - Medium</option>
							<option id="5">Service Complaint - High</option>
							<option id="6">Missed Checkcall</option>
							<option id="7">Missed Patrol</option>
						</select>
					</div>
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
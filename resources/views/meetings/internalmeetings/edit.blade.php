@extends('layout')
@section('title','Steel Toe | Edit Internal Meetings')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Edit {{$data->Meeting_Title}}'s meeting profile
		<a href="{{url('meetings/internalmeetings')}}" class="float-end">View All</a>
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
		<form method="post" action="{{url('meetings/internalmeetings/'.$data->id)}}">
			@method('put')
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Meeting Date and Time</th>
				<td>
					<input type="text" value="{{$data->Meeting_Date_time}}" name="meetingdatetime" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Attendees</th>
				<td>
					<input type="text" value="{{$data->Meeting_attendees}}" name="meetingattendees" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Meeting Purpose</th>
				<td>
					<input type="text" value="{{$data->Meeting_Title}}" name="meetingtitle" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Meeting Minutes</th>
				<td>
					<textarea rows="10" cols="50" name="meetingminutes" class="form-control">{{$data->Meeting_minutes}}</textarea>
				</td>
			</tr>
			<tr>
				<th>Meeting Outcome</th>
				<td>
					<textarea rows="5" cols="50" name="meetingoutcomes" class="form-control">{{$data->Meeting_outcomes}}</textarea>
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
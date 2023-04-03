@extends('layout')
@section('title','Steel Toe | Add to Staff List')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Add new Staff 
		<a href="{{url('staff/stafflist')}}" class="float-end">View All</a>
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
		<form method="post" action="{{url('staff/stafflist')}}">
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Company ID</th>
				<td>
					<input type="text" name="staffcompanyid" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Staff Name</th>
				<td>
					<input type="text" name="staffname" class="form-control" />
				</td>
			</tr>
			<tr>
				<th><div>Position</div><div>Select from list:</div></th>
				<td>
					<select class="form-control" name="staffposition">
						<option name="staffposition_1" id="1">Security Guard</option>
						<option name="staffposition_1" id="2">Supervisor</option>
						<option name="staffposition_1" id="3">Mobile Driver</option>
						<option name="staffposition_1" id="4">Awaiting Details</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>Phone No</th>
				<td>
					<input type="text" name="staffphone" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>SIA Number</th>
				<td>
					<input type="text" name="staffSIA" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>SIA Expiry Date</th>
				<td>
					<input type="text" name="staffSIAexpiry" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Email Address</th>
				<td>
					<input type="text" name="staffemail" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Location</th>
				<td>
					<input type="text" name="stafflocation" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Pay Rate</th>
				<td>
					<input type="text" name="staffpayrate" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Sub-Contractor Name(If Applicable)</th>
				<td>
					<select name="subcontractor" class="form-control">
						<option value="">-- Select Sub-contractor --</option>
						@foreach($subcontractor as $sub)
						<option value="{{$sub->id}}">{{$sub->subcontractor_name}}</option>
						@endforeach
						<option value="N/A">N/A</option>
					</select>
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
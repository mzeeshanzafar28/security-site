@extends('layout')
@section('title','Steel Toe | Edit Staff Profile')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Edit {{$data->staff_name}}'s staff profile
		<a href="{{url('staff/stafflist')}}" class="float-end">View All</a>
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
		<form method="post" action="{{url('staff/stafflist/'.$data->id)}}">
			@method('put')
			@csrf
			<table class="table table-bordered">
				<tr>
					<th>Company ID</th>
					<td>
						<input type="text" name="staffcompanyid" value="{{$data->staff_companyid}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>Staff Name</th>
					<td>
						<input type="text" name="staffname" value="{{$data->staff_name}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>Position</th>
					<td>
						<input type="text" name="staffposition" value="{{$data->staff_position}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>Phone No</th>
					<td>
						<input type="text" name="staffphone" value="{{$data->staff_phone}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>SIA Number</th>
					<td>
						<input type="text" name="staffSIA" value="{{$data->staff_SIA}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>SIA Expiry Date</th>
					<td>
						<input type="text" name="staffSIAexpiry" value="{{$data->staff_SIA_expiry}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>Email Address</th>
					<td>
						<input type="text" name="staffemail" value="{{$data->staff_email}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>Location</th>
					<td>
						<input type="text" name="stafflocation" value="{{$data->staff_location}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>Pay Rate</th>
					<td>
						<input type="text" name="staffpayrate" value="{{$data->staff_payrate}}" class="form-control" />
					</td>
				</tr>
				<tr>
					<th>Sub-Contractor Name(If Applicable)</th>
					<td>
						<select name="subcontractor" class="form-control">
							<option value="">-- Select Sub-contractor --</option>
							@foreach($subcontractor as $sub)
							<option value="{{$sub->id}}" {{$sub->id == $data->staffsubcontractor_name ? 'selected' : ''}}>{{$sub->subcontractor_name}}</option>
							@endforeach
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
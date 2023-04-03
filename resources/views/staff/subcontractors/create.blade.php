@extends('layout')
@section('title','Steel Toe | Add Sub-contractor')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Setup new Sub-contractor
		<a href="{{url('staff/subcontractors')}}" class="float-end">View All</a>
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
		<form method="post" action="{{url('staff/subcontractors')}}">
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Sub-contractor Name</th>
				<td>
					<input type="text" name="subcontractorname" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Short Code</th>
				<td>
					<input type="text" name="subcontractorcode" class="form-control" />
				</td>
			</tr>
			<tr>
				<th><div>Services</div><div>Select from list:</div></th>
				<td>
					<select class="form-control" name="subcontractorservices">
						<option name="subcontractorservices_1" id="1">Guarding</option>
						<option name="subcontractorservices_1" id="2">Alarm Response</option>
						<option name="subcontractorservices_1" id="3">Mobile Patrol</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>Email Address</th>
				<td>
					<input type="text" name="subcontractoremail" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Phone Number</th>
				<td>
					<input type="text" name="subcontractorphone" class="form-control" />
				</td>
			</tr>
			<tr>
				<th><div>Service operating areas</div><div>Select from list:</div></th>
				<td>
					<select class="form-control" name="subcontractorcoveragearea">
						<option name="subcontractorcoveragearea_1" id="1">England - North West</option>
						<option name="subcontractorcoveragearea_1" id="2">England - North East</option>
						<option name="subcontractorcoveragearea_1" id="3">England - London</option>
						<option name="subcontractorcoveragearea_1" id="4">England - South West</option>
						<option name="subcontractorcoveragearea_1" id="4">England - South East</option>
						<option name="subcontractorcoveragearea_1" id="5">England - Yorkshire and Humber</option>
						<option name="subcontractorcoveragearea_1" id="6">Wales</option>
						<option name="subcontractorcoveragearea_1" id="7">Scotland</option>
					</select>
				</td>
			</tr>
			<tr>
				<th>Registered Address</th>
				<td>
					<input type="text" name="subcontractoraddress" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Sub-contractor Charge Rate</th>
				<td>
					<input type="text" name="subcontractorpayrate" class="form-control" />
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
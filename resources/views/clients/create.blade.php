@extends('layout')
@section('title','Steel Toe | Add Clients')
@section('content')

<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Clients 
		<a href="{{url('clients')}}" class="float-end">View All</a>
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

		@if(Session::has('error'))
		<p class="text-danger">{{session('error')}}</p>
		@endif
		<form method="post" action="{{url('clients')}}">
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Customer Name</th>
				<td>
					<input type="text" name="clientname" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Emergency Contact</th>
				<td>
					<input type="text" name="name" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Phone Number</th>
				<td>
					<input type="text" name="number" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Email Address</th>
				<td>
					<input type="text" name="email" class="form-control" />
				</td>
			</tr>
			<tr>
				
				<td colspan="2">
					@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
						<input type="submit" class="btn btn-primary" value="Submit" />
					@endif
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
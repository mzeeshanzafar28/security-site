@extends('layout')
@section('title','Steel Toe | Add Site')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Add Site 
		<a href="{{url('sites')}}" class="float-end">View All</a>
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
		
		<form method="post" action="{{url('sites')}}">
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Customer Name</th>
				<td>
					<select name="client" class="form-control">
						<option value="">-- Select Customer --</option>
						@foreach($clients as $client)
						<option value="{{$client->id}}">{{$client->clientname}}</option>
						@endforeach
					</select>
				</td>
			</tr>
			<tr>
				<th>Site Name</th>
				<td>
					<input type="text" name="sitename" class="form-control" />
				</td>
			</tr>
			<tr>
				<th>Site Postcode</th>
				<td>
					<input type="text" name="sitepostcode" class="form-control" />
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
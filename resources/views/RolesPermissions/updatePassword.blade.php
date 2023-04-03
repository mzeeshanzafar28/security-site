@extends('layout')
@section('title','Steel Toe | Add Team')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Team 
		<a href="{{url('team')}}" class="float-end">View All</a>
	</div>
	<div class="card-body">
		
		
		
		@if(Session::has('msg'))
		<p class="text-sucess">{{session('msg')}}</p>
		@endif
		<form method="post" action="{{url('team/proccess')}}">
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Member Name</th>
				<td>
                    <input type="hidden" name="id" value="{{$team_detail->id}}">
					{{$team_detail->name}}
				</td>
			</tr>
			<tr>
				<th>Member Email</th>
				<td>
                    
					{{$team_detail->email}}

				</td>
			</tr>
			<tr>
				<th>Member Role</th>
				<td>
                    {{ $role_name->name }}
				</td>
			</tr>
			<tr>
				<th>Enter Member New Password</th>
				<td>
                    
					<input type="password" name="password" class="form-control" value="" />
                    @if ($errors->has('password'))
                        <span class="text-danger">{{ $errors->first('password') }}</span>
                    @endif
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
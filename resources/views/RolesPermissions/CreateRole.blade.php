@extends('layout')
@section('title','Steel Toe | Add Role')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Roles 
		<a href="{{url('roles')}}" class="float-end">View All</a>
	</div>
	<div class="card-body">
		
		
		
		@if(Session::has('msg'))
		<p class="text-sucess">{{session('msg')}}</p>
		@endif
		<form method="post" action="{{url('roles/save')}}">
			@csrf
		<table class="table table-bordered">
			<tr>
				<th>Role Name</th>
				<td>
                    <input type="hidden" name="id" value="{{isset($role) ? $role->id:''}}">
					<input type="text" name="name" class="form-control" value="{{isset($role) ? $role->name : ''}}" />
                    @if ($errors->has('name'))
                        <span class="text-danger">{{ $errors->first('name') }}</span>
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
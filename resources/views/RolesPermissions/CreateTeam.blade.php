@extends('layout')
@section('title', 'Steel Toe | Add Team')
@section('content')
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Team
            <a href="{{ url('team') }}" class="float-end">View All</a>
        </div>
        <div class="card-body">



            @if (Session::has('msg'))
                <p class="text-sucess">{{ session('msg') }}</p>
            @endif
            <form method="post" action="{{ url('team/save') }}">
                @csrf
                <table class="table table-bordered">
                    <tr>
                        <th>Member Name</th>
                        <td>
                            <input type="hidden" name="id" value="{{ isset($team) ? $team->id : '' }}">
                            <input type="text" name="name" class="form-control"
                                value="{{ isset($team) ? $team->name : '' }}" />
                            @if ($errors->has('name'))
                                <span class="text-danger">{{ $errors->first('name') }}</span>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Member Email</th>
                        <td>

                            <input type="email" name="email" class="form-control"
                                value="{{ isset($team) ? $team->email : '' }}" />
                            @if ($errors->has('email'))
                                <span class="text-danger">{{ $errors->first('email') }}</span>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Member Role</th>
                        <td>

                            <select name="role" id="" class="form-control">
                                @foreach ($roles as $role)
                                    <option value="{{ $role->id }}"
                                        {{ isset($team) && $role->id == $team->user_role ? 'selected' : '' }}>
                                        {{ $role->name }}</option>
                                @endforeach
                            </select>
                            @if ($errors->has('role'))
                                <span class="text-danger">{{ $errors->first('role') }}</span>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Auto Assign New client</th>
                        <td>

							<select name="new_client" id="" class="form-control">
								<option  disabled>--Select---</option>
                               <option value="0">No</option>
                               <option selected value="1">Yes</option>
                            </select>
                            @if ($errors->has('new_client'))
                                <span class="text-danger">{{ $errors->first('new_client') }}</span>
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Member Password</th>
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
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
        </script>
        <script src="{{ asset('/js/script.js') }}"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

    @endsection

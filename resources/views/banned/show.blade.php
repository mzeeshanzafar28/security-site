@extends('layout')
@section('title','Steel Toe | Show Banned Staff')
@section('content')
<div class="card mb-4 mt-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Show banned {{ucfirst(trans("$data->Staff_Name"))}}'s profile
        <a href="{{url('banned')}}" class="float-end btn btn-sm btn-success">View All</a>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Staff Name</th>
                <td>
                    {{ucfirst(trans("$data->Staff_Name"))}}
                </td>
            </tr>
            <tr>
                <th>SIA License Number</th>
                <td>
                    {{$data->SIA_License_Number}}
                </td>
            </tr>
            <tr>
                <th>Reason of Ban</th>
                <td>
                    {{ucfirst(trans("$data->Reason_of_Ban"))}}
                </td>
            </tr>
            <tr>
                <th>Date and Time of Ban</th>
                <td>
                    {{$data->created_at}}
                </td>
            </tr>
        </table>
    </div>
</div>

@endsection
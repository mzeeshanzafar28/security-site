@extends('layout')
@section('title','Steel Toe | Show Client')
@section('content')
<div class="card mb-4 mt-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Show {{$data->clientname}}'s profile
        <a href="{{url('clients')}}" class="float-end btn btn-sm btn-success">View All</a>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Customer Name</th>
                <td>
                    {{$data->clientname}}
                </td>
            </tr>
            <tr>
                <th>Emergency Contact</th>
                <td>
                    {{$data->name}}
                </td>
            </tr>
            <tr>
                <th>Phone Number</th>
                <td>
                    {{$data->number}}
                </td>
            </tr>
            <tr>
                <th>Email Address</th>
                <td>
                    {{$data->email}}
                </td>
            </tr>
        </table>
    </div>
</div>

@endsection
@extends('layout')
@section('title','Steel Toe | Show Sub-contractor Profile')
@section('content')
<div class="card mb-4 mt-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Edit {{$data->subcontractor_name}}'s Sub-contractor profile
        <a href="{{url('staff/subcontractors')}}" class="float-end btn btn-sm btn-success">View All</a>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Sub-contractor Name</th>
                <td>
                    {{$data->subcontractor_name}}
                </td>
            </tr>
            <tr>
                <th>Short Code</th>
                <td>
                    {{$data->subcontractor_code}}
                </td>
            </tr>
            <tr>
                <th>Services</th>
                <td>
                    {{$data->subcontractor_services}}
                </td>
            </tr>
            <tr>
                <th>Email Address</th>
                <td>
                    {{$data->subcontractor_email}}
                </td>
            </tr>
            <tr>
                <th>Phone Number</th>
                <td>
                    {{$data->subcontractor_phone}}
                </td>
            </tr>
            <tr>
                <th>Service operating areas</th>
                <td>
                    {{$data->subcontractor_coveragearea}}
                </td>
            </tr>
            <tr>
                <th>Registered Address</th>
                <td>
                    {{$data->subcontractor_address}}
                </td>
            </tr>
            <tr>
                <th>Sub-contractor Charge Rate</th>
                <td>
                    {{$data->subcontractor_payrate}}
                </td>
            </tr>
        </table>
    </div>
</div>

@endsection
@extends('layout')
@section('title','Steel Toe | Activity View')
@section('content')
<div class="card mb-4 mt-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        View Department
        <a href="{{url('activities')}}" class="float-end btn btn-sm btn-success">View All</a>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Activity Name</th>
                <td>
                    {{$data->Activity_Type}}
                </td>
            </tr>
            <tr>
                <th>Activity Weightage</th>
                <td>
                    {{$data->Activity_Weight}}
                </td>
            </tr>
        </table>
    </div>
</div>

@endsection
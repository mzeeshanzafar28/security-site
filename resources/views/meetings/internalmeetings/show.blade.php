@extends('layout')
@section('title','Steel Toe | Show Internal Meetings')
@section('content')
<div class="card mb-4 mt-4">
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Show {{$data->Meeting_Title}}'s meeting profile
        <a href="{{url('meetings/internalmeetings')}}" class="float-end btn btn-sm btn-success">View All</a>
    </div>
    <div class="card-body">
        <table class="table table-bordered">
            <tr>
                <th>Meeting Date and Time</th>
                <td>
                    {{$data->Meeting_Date_time}}
                </td>
            </tr>
            <tr>
                <th>Attendees</th>
                <td>
                    {{$data->Meeting_attendees}}
                </td>
            </tr>
            <tr>
                <th>Meeting Purpose</th>
                <td>
                    {{$data->Meeting_Title}}
                </td>
            </tr>
            <tr>
                <th>Meeting Minutes</th>
                <td>
                    {{$data->Meeting_minutes}}
                </td>
            </tr>
            <tr>
                <th>Meeting Outcome</th>
                <td>
                    {{$data->Meeting_outcomes}}
                </td>
            </tr>
        </table>
    </div>
</div>

@endsection
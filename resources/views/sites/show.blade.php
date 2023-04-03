@extends('layout')
@section('title','Steel Toe | Show site')
@section('content')
<div class="card mb-4 mt-4">
    
    <div class="card-header">
        <i class="fas fa-table me-1"></i>
        Show site {{$data->sitename}}'s profile
        <a href="{{url('sites')}}" class="float-end btn btn-sm btn-success">View All</a>
    </div>
    <div class="card-body">
        <div class="row">
            <table class="table table-bordered">
                <tr>
                    <th>Customer Name</th>
                    <td>
                        {{$data->client->clientname}}
                    </td>
                </tr>
                <tr>
                    <th>Site Name</th>
                    <td>
                        {{$data->sitename}}
                    </td>
                </tr>
                <tr>
                    <th>Site Postcode</th>
                    <td>
                        {{$data->sitepostcode}}
                    </td>
                </tr>
            </table>
        </div>

        <div class="row">
            <div class="col-12">
                <h4>Site's Trained Guards</h4>
            </div>
            <div class="col-12">
                <table class="table">
                    <thead>
                        <th>Staff Name</th>
                    </thead>
                    <tbody>
                        @foreach ($staffs as $staff)
                            <tr>
                                <td>{{$staff->staff_name}}
                                @if(auth()->user()->user_role == 0)
                                    ({{ isset($subcont)? $subcont->subcontractor_code : ''}})
									@else
                                    ({{((isset($role)&&$role->see_code) || auth()->user()->user_role == 0) && isset($subcont)  ? $subcont->subcontractor_code : '' }})
                                    @endif
                                    <!--{{isset($staff->subcontractor) ? '('.$staff->subcontractor->subcontractor_code.')' : ''}}-->
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

@endsection
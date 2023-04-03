@extends('layout')
@section('title','Steel Toe Admin | My Subscribed Plan')
@section('content')
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            My Subscribed Plan
            
            {{-- <a href="{{url('plans/my-plan')}}" class="float-end">View Subscribed Plan</a> --}}
            
        </div>
        
        @if (Session::has('msg'))
            <div class="alert alert-success" role="alert">
                {{Session('msg')}}
            </div>
        @endif
       
        <div class="card-body">
            <div>
                <h2>My Subscribed Plan:  {{$plan->name}}</h2>
            </div>
            <table class="table">
                <thead class="text-center">
                    <tr>
                        <th>Plan Name</th>
                        <th>Price</th>
                        <th>Time Period</th>
                        <th>Clients Limit</th>
                        <th>Sites Limit</th>
                        <th>Staffs Limit</th>
                        <th>Monitorings Limit</th>
                        <th>Meetings Limit</th>
                        <th>Supervisory Limit</th>
                        <th>Activities Limit</th>
                        {{-- <th>Action</th> --}}
                    </tr>
                </thead>
                <tbody class="text-center">
                    {{-- @foreach($plans as $plan) --}}
                    <tr>
                        <td>{{$plan->name}}</td>
                        <td>$ {{$plan->price}}</td>
                        <td>{{$plan->period}} Days</td>
                        <td>{{$plan->client_limit}}</td>
                        <td>{{$plan->site_limit}}</td>
                        <td>{{$plan->staff_limit}}</td>
                        <td>{{$plan->monitoring_limit}}</td>
                        <td>{{$plan->meeting_limit}}</td>
                        <td>{{$plan->supervisor_limit}}</td>
                        <td>{{$plan->activities_limit}}</td>
                        {{-- <td>
                            @if ($plan->id == auth()->user()->user_plan)
                                <span class="badge bg-success" style="font-size: 15px">Subscribed</span>
                            @elseif($plan->id == auth()->user()->requested_plan)
                                <span class="badge bg-warning text-dark" style="font-size: 15px">Requested</span>
                            @else 
                                <a href="{{URL::to('subscription/plans/subscribe/'.$plan->id.'/'.$plan->name)}}" class="btn btn-primary">Subscribe </a>
                            @endif
                        </td> --}}
                        
                    </tr>
                    {{-- @endforeach --}}

                    <tr>
                        <td><strong>Plan Usage</strong></td>
                        <td></td>
                        <td>{{$sub_date}}</td>
                        <td>{{$t_clients}}</td>
                        <td>{{$t_sites}}</td>
                        <td>{{$t_staffs}}</td>
                        <td>{{$t_monitorings}}</td>
                        <td>{{$t_in_meetings}}</td>
                        <td>{{$t_supervisor}}</td>
                        <td>{{$t_activities}}</td>
                    </tr>

                    @php
                        use Carbon\Carbon;

                        $date = Carbon::createFromFormat('Y-m-d', $sub_date);
                        $expiry_date = $date->addDays($plan->period)->format('Y-m-d');
                        $start = Carbon::parse($sub_date);
                        $end = Carbon::parse($expiry_date);
                        
                        $remaining_days = $start->diffInDays($end, false);
                        
                    @endphp
                    <tr>
                        <td><strong>Remaining Usage</strong></td>
                        <td></td>
                        @if ($plan->id == 1)
                            <td>{{$remaining_days}} Days Left</td>
                            <td>{{$plan->client_limit - $t_clients}}</td>
                            <td>{{$plan->site_limit - $t_sites}}</td>
                            <td>{{$plan->staff_limit - $t_staffs}}</td>
                            <td>{{$plan->monitoring_limit - $t_monitorings}}</td>
                            <td>{{$plan->meeting_limit - $t_in_meetings}}</td>
                            <td>{{$plan->supervisor_limit - $t_supervisor}}</td>
                            <td>{{$plan->activities_limit - $t_activities}}</td>
                        @else
                            <td>{{$remaining_days}} Days Left</td>
                            <td>unlimited</td>
                            <td>unlimited</td>
                            <td>unlimited</td>
                            <td>unlimited</td>
                            <td>unlimited</td>
                            <td>unlimited</td>
                            <td>unlimited</td>
                        @endif

                    </tr>
                
                </tbody>
            </table>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="{{ asset('/js/script.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

@endsection
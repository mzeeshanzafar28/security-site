@extends('layout')
@section('title', 'Steel Toe | Monitoring View')
@section('content')
    @php
        use Carbon\Carbon;
        use App\Models\subcontractorModel;
        use App\Models\stafflistModel;
        use App\Models\Role;
    @endphp

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"
        integrity="sha256-OFRAJNoaD8L3Br5lglV7VyLRf0itmoBzWUoM+Sji4/8=" crossorigin="anonymous"></script>
        
        
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Monitoring View
            <a href="{{ url('monitoring') }}" class="float-end btn btn-sm btn-success">View All</a>

            <button class="float-end btn btn-info btn-sm text-white" onclick="printRoaster()" style="margin-right:10px">Save
                Roster</button>
        </div>
        <div class="card-body">
            <table class="table table-bordered">
                <tr>
                    <th>Week Commencing</th>
                    <td>
                        {{ $data->Week_Commencing }}
                    </td>
                </tr>
                <tr>
                    <th>Site Name</th>
                    <td>
                        {{ $data->site->sitename }}
                    </td>
                </tr>
                <tr>
                    <th>Site Hours Per Week</th>
                    <td>
                        {{ $data->Total_hours }}
                    </td>
                </tr>
                <tr>
                    <th>No. of Activities</th>
                    <td>
                        {{ $siteactivites->count() }}
                    </td>
                </tr>
                <tr>

                    <th>Weekly Staff Roster</th>
                    <td>
                        <table class="table" id="staff-roaster">
                            <thead class="thead-light text-center">
                                <tr>
                                    <th scope="col">Day</th>
                                    <th scope="col">Guard Name</th>
                                    <th scope="col">Guard Sia Number</th>
                                    <th scope="col">Guard Phone Number</th>
                                    <th scope="col">Time In</th>
                                    <th scope="col">Time Out</th>
                                    <th scope="col">Chargeable Hours</th>
                                    <th scope="col">Payable Hours</th>
                            @php
                            $role = Role::find(auth()->user()->user_role);
                            @endphp
                            @if (!isset($role->see_code) || (isset($role->see_code) && $role->see_code == 1))
                                    <th scope="col" id="action">Actions</th>
                            @endif
                                </tr>
                            </thead>
                            <tbody class="text-center">
                                @foreach ($data->monitoring_staff->sortBy('shift_day') as $shift)
                                    <tr>
                                        <th scope="row">
                                            @if ($shift->shift_day == 1)
                                                Monday
                                            @elseif($shift->shift_day == 2)
                                                Tuesday
                                            @elseif($shift->shift_day == 3)
                                                Wednesday
                                            @elseif($shift->shift_day == 4)
                                                Thursday
                                            @elseif($shift->shift_day == 5)
                                                Friday
                                            @elseif($shift->shift_day == 6)
                                                Saturday
                                            @elseif($shift->shift_day == 7)
                                                Sunday
                                            @else
                                                ..
                                            @endif
                                        </th>
                                        <td>{{ $shift->staff->staff_name ?? '' }}
                                            @php
                                                $subcont = subcontractorModel::find($shift->staff->staffsubcontractor_name);
                                                $role = Role::find(auth()->user()->user_role);
                                            @endphp
                                            @if(auth()->user()->user_role == 0)
									                                    ({{ isset($subcont)? $subcont->subcontractor_code : ''}})
									@else
                                    ({{((isset($role)&&$role->see_code) || auth()->user()->user_role == 0) && isset($subcont)  ? $subcont->subcontractor_code : '' }})
                                    @endif
                                        </td>
                                        <td>{{$shift->staff_sia}}</td>
                                        <td>{{$shift->staff_phone}}</td>
                                        <td>{{ $shift->time_in }}</td>
                                        <td>{{ $shift->time_out }}</td>
                                        <td>{{ $shift->total_hours }}</td>
                                        <td>{{ $shift->guard_hours }}</td>
                            @php
                            $role = Role::find(auth()->user()->user_role);
                            @endphp
                            @if (!isset($role->see_code) || (isset($role->see_code) && $role->see_code == 1))
                                        <td class="action-c">
                                            <a style="margin-left: 15px; cursor:pointer;" title="Edit"
                                                onclick="editShift({{ json_encode($shift) }})"><span
                                                    class="fa fa-edit"></span></a>
                                            <a style="cursor: pointer; color:black;" title="delete"
                                                onclick="return confirm('Are you sure to delete this data?')"
                                                href="{{ url('monitoring/shift/' . $shift->id . '/delete') }}"><span
                                                    class="fa fa-trash"></span></a>
                            @endif
                                        </td>
                                    </tr>
                                @endforeach
                                {{-- <tr>
                                <th rowspan="2" scope="row" >Monday</th>
                                <td>{{$data->start_time_day1}}</td>
                                <td>{{$data->end_time_day1}}</td>
                                @php
                                    $staff = stafflistModel::with('subcontractor')->find($data->guardname_day1);
                                @endphp
                                <td>{{$staff->staff_name ?? ''}} {{$staff->subcontractor->subcontractor_code ?? ''}}</td>
                                <td>{{$data->shift_hours_day1}}</td>
                            </tr>
                            <tr>
                                <td>{{$data->start_time_day1_2}}</td>
                                <td>{{$data->end_time_day1_2}}</td>
                                @php
                                    $staff2 = stafflistModel::with('subcontractor')->find($data->guardname_day1_2);
                                @endphp
                                <td>{{$staff2->staff_name ?? ''}} {{$staff2->subcontractor->subcontractor_code ?? ''}}</td>
                                <td>{{$data->shift_hours_day1_2}}</td>
                            </tr>
                            <tr>
                                <th rowspan="2" scope="row"> Tuesday</th>
                                <td>{{$data->start_time_day2}}</td>
                                <td>{{$data->end_time_day2}}</td>
                                @php
                                    $staff3 = stafflistModel::with('subcontractor')->find($data->guardname_day2);
                                @endphp
                                <td>{{$staff3->staff_name ?? ''}} {{$staff3->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day2}}</td>
                            </tr>
                            <tr>
                                <td>{{$data->start_time_day2_2}}</td>
                                <td>{{$data->end_time_day2_2}}</td>
                                @php
                                    $staff4 = stafflistModel::with('subcontractor')->find($data->guardname_day2_2);
                                @endphp
                                <td>{{$staff4->staff_name ?? ''}} {{$staff4->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day2_2}}</td>
                            </tr>
                            <tr>
                                <th rowspan="2" scope="row"> Wednesday</th>
                                <td>{{$data->start_time_day3}}</td>
                                <td>{{$data->end_time_day3}}</td>
                                @php
                                    $staff5 = stafflistModel::with('subcontractor')->find($data->guardname_day3);
                                @endphp
                                <td>{{$staff5->staff_name ?? ''}} {{$staff5->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day3}}</td>
                            </tr>
                            <tr>
                                <td>{{$data->start_time_day3_2}}</td>
                                <td>{{$data->end_time_day3_2}}</td>
                                @php
                                    $staff6 = stafflistModel::with('subcontractor')->find($data->guardname_day3_2);
                                @endphp
                                
                                <td>{{$staff6->staff_name ?? ''}} {{$staff6->subcontractor->subcontractor_code ?? ''}}</td>
                                <td>{{$data->shift_hours_day3_2}}</td>
                            </tr>
                            <tr>
                                <th rowspan="2" scope="row"> Thursday</th>
                                <td>{{$data->start_time_day4}}</td>
                                <td>{{$data->end_time_day4}}</td>
                                @php
                                    $staff7 = stafflistModel::with('subcontractor')->find($data->guardname_day4);
                                @endphp
                                <td>{{$staff7->staff_name ?? ''}} {{$staff7->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day4}}</td>
                            </tr>
                            <tr>
                                <td>{{$data->start_time_day4_2}}</td>
                                <td>{{$data->end_time_day4_2}}</td>
                                @php
                                    $staff8 = stafflistModel::with('subcontractor')->find($data->guardname_day4_2);
                                @endphp
                                <td>{{$staff8->staff_name ?? ''}} {{$staff8->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day4_2}}</td>
                            </tr>
                            <tr>
                                <th rowspan="2" scope="row"> Friday</th>
                                <td>{{$data->start_time_day5}}</td>
                                <td>{{$data->end_time_day5}}</td>
                                @php
                                    $staff9 = stafflistModel::with('subcontractor')->find($data->guardname_day5);
                                @endphp
                                <td>{{$staff9->staff_name ?? ''}} {{$staff9->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day5}}</td>
                            </tr>
                            <tr>
                                <td>{{$data->start_time_day5_2}}</td>
                                <td>{{$data->end_time_day5_2}}</td>
                                @php
                                    $staff10 = stafflistModel::with('subcontractor')->find($data->guardname_day5_2);
                                @endphp
                                <td>{{$staff10->staff_name ?? ''}} {{$staff10->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day5_2}}</td>
                            </tr>
                            <tr>
                                <th rowspan="2" scope="row"> Saturday</th>
                                <td>{{$data->start_time_day6}}</td>
                                <td>{{$data->end_time_day6}}</td>
                                @php
                                    $staff11 = stafflistModel::with('subcontractor')->find($data->guardname_day6);
                                @endphp
                                <td>{{$staff11->staff_name ?? ''}} {{$staff11->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day6}}</td>
                            </tr>
                            <tr>
                                <td>{{$data->start_time_day6_2}}</td>
                                <td>{{$data->end_time_day6_2}}</td>
                                @php
                                    $staff12 = stafflistModel::with('subcontractor')->find($data->guardname_day6_2);
                                @endphp
                                <td>{{$staff12->staff_name ?? ''}} {{$staff12->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day6_2}}</td>
                            </tr>
                            <tr>
                                <th rowspan="2" scope="row"> Sunday</th>
                                <td>{{$data->start_time_day7}}</td>
                                <td>{{$data->end_time_day7}}</td>
                                @php
                                    $staff13 = stafflistModel::with('subcontractor')->find($data->guardname_day7);
                                @endphp
                                <td>{{$staff13->staff_name ?? ''}} {{$staff13->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day7}}</td>
                            </tr>
                            <tr>
                                <td>{{$data->start_time_day7_2}}</td>
                                <td>{{$data->end_time_day7_2}}</td>
                                @php
                                    $staff14 = stafflistModel::with('subcontractor')->find($data->guardname_day4);
                                @endphp
                                <td>{{$staff14->staff_name ?? ''}} {{$staff14->subcontractor->subcontractor_code ?? ''}}</td>
                                
                                <td>{{$data->shift_hours_day7_2}}</td>
                            </tr> --}}
                                <tr>
                                    <th scope="row">
                                        Total Hours
                                    </th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <th>
                                        {{ 
                                            $data->monitoring_staff->sum('total_hours') }}
                                        hours
                                    </th>
                                    <th>
                                        {{
                                        
                                            $data->monitoring_staff->sum('guard_hours') }}
                                        hours
                                    </th>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </table>
            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">KPI Graph</th>
                        <th scope="col">KPI Mis-conduct List</th>
                        <div class="card-body">
                            @php
                            $role = Role::find(auth()->user()->user_role);
                            @endphp
                            @if (!isset($role->see_code) || (isset($role->see_code) && $role->see_code == 1))
                            <button type="button" class="btn btn-primary" style="float:right" data-toggle="modal"
                                data-target="#misconductmodal">
                                Register Mis-conduct
                            </button>
                            @endif
                        </div>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">
                            <div id="piechart"></div>

                            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

                            <script type="text/javascript">
                                // Load google charts
                                google.charts.load('current', {
                                    'packages': ['corechart']
                                });
                                google.charts.setOnLoadCallback(drawChart);
                                
                                // Draw the chart and set the chart values
                                function drawChart() {
                                    var data = google.visualization.arrayToDataTable([
                                        ['Task', 'Hours per Day'],
                                        <?php echo $chartData; ?>
                                    ]);

                                    // Optional; add a title and set the width and height of the chart
                                    var options = {
                                        'title': 'KPI Performance',
                                        'width': 350,
                                        'height': 400,
                                        'chartArea': {
                                            'width': '100%',
                                            'height': '80%'
                                        },
                                        'legend': {
                                            'position': 'bottom'
                                        }
                                    };


                                    // Display the chart inside the <div> element with id="piechart"
                                    var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                                    chart.draw(data, options);
                                }
                            </script>
                        </th>
                        <td>
                            <table class="table">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">No. </th>
                                        <th scope="col">Shift Day </th>
                                        <th scope="col">Activity Type</th>
                                        <th scope="col">Information</th>
                                        <th scope="col">Date and Time of Activity</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $srno = 1;
                                        
                                    @endphp
                                    @foreach ($siteactivites as $activity)
                                        <tr>
                                            <td>{{ $srno }}</td>
                                            <td>
                                                @if ($activity->day == 1)
                                                    Monday
                                                @elseif($activity->day == 2)
                                                    Tuesday
                                                @elseif($activity->day == 3)
                                                    Wednesday
                                                @elseif($activity->day == 4)
                                                    Thursday
                                                @elseif($activity->day == 5)
                                                    Friday
                                                @elseif($activity->day == 6)
                                                    Saturday
                                                @elseif($activity->day == 7)
                                                    Sunday
                                                @else
                                                @endif
                                            </td>
                                            <td>{{ $activity->activity->Activity_Type }}</td>
                                            <td>{{ $activity->reason_of_activity }}</td>
                                            <td>{{ $activity->created_at }}</td>
                                            <td>
                                                <button data-toggle="modal"
                                                    data-target="#activitymodal-{{ $activity->id }}"
                                                    class="btn btn-primary btn-sm">View</button>
                                            </td>
                            @php
                            $role = Role::find(auth()->user()->user_role);
                            @endphp
                            @if (!isset($role->see_code) || (isset($role->see_code) && $role->see_code == 1))
                                            <td>
                                                <a href="{{ url('occuredactivites/delete/' . $activity->id) }}"
                                                    class="btn btn-danger btn-sm">Delete</a>
                                            </td>
                            @endif
                                        </tr>
                                        @php
                                            $srno++;
                                        @endphp
                                        <!-- misconductmodal view -->
                                        @csrf
                                        <div class="modal fade" id="activitymodal-{{ $activity->id }}" tabindex="-1"
                                            role="dialog" aria-labelledby="activitymodallabel" aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="misconductmodalLabel">View Activity</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="alert alert-danger" style="display:none"></div>
                                                        @csrf
                                                        <div class="form-group">
                                                            <label>Week Commencing</label>
                                                            <input type="text" class="form-control"
                                                                value="{{ $data->Week_Commencing }}" readonly>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Site Name</label>
                                                            <input type="text" class="form-control"
                                                                value="{{ $data->site->sitename }}" readonly>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="Activity Day">Activtiy Day</label>
                                                            @if ($activity->day == 1)
                                                                <input class="form-control" type="text" value="Monday"
                                                                    readonly>
                                                            @elseif($activity->day == 2)
                                                                <input type="text" value="Tuesday" class="form-control"
                                                                    readonly>
                                                            @elseif($activity->day == 3)
                                                                <input class="form-control" type="text" value="Wednesday"
                                                                    readonly>
                                                            @elseif($activity->day == 4)
                                                                <input class="form-control" type="text" value="Thursday"
                                                                    readonly>
                                                            @elseif($activity->day == 5)
                                                                <input class="form-control" type="text" value="Friday"
                                                                    readonly>
                                                            @elseif($activity->day == 6)
                                                                <input class="form-control" type="text"
                                                                    value="Saturday" readonly>
                                                            @elseif($activity->day == 7)
                                                                <input class="form-control" type="text" value="Sunday"
                                                                    readonly>
                                                            @else
                                                                <input type="text" value="Not available" readonly>
                                                            @endif
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Activity Type</label>
                                                            <input type="text" class="form-control"
                                                                value="{{ $activity->activity->Activity_Type }}" readonly>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Reason of Activity</label>
                                                            <textarea name="reasonofactivity" class="textarea form-control" id="description" cols="40" rows="5"
                                                                disabled>{{ $activity->reason_of_activity }}</textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Date of Activity</label>
                                                            <input type="text" class="form-control"
                                                                value="{{ $activity->created_at }}" readonly>
                                                        </div>
                                                        <div class="form-group">
                                                            <label>Status</label>
                                                            @if ($activity->status == 0)
                                                                <input type="text" class="form-control"
                                                                    value="Pending" readonly>
                                                            @endif

                                                            @if ($activity->status == 1)
                                                                <input type="text" class="form-control"
                                                                    value="Investigating" readonly>
                                                            @endif

                                                            @if ($activity->status == 2)
                                                                <input type="text" class="form-control"
                                                                    value="Resolved" readonly>
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end misconductmodal view -->
                                    @endforeach
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <!-- misconductmodal -->
    <form method="post" action="{{ url('occuredactivites') }}">
        @csrf
        <div class="modal fade" id="misconductmodal" tabindex="-1" role="dialog"
            aria-labelledby="misconductmodalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="misconductmodalLabel">Mis-conduct Register</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="alert alert-danger" style="display:none"></div>
                        @csrf
                        <div class="form-group">
                            <label>Week Commencing</label>
                            <input type="text" class="form-control" value="{{ $data->Week_Commencing }}" readonly>
                            <input type="hidden" class="form-control" name="weekcommencing"
                                value="{{ $data->id }}" readonly>
                        </div>
                        <div class="form-group">
                            <label>Site Name</label>
                            <input type="text" class="form-control" value="{{ $data->site->sitename }}" readonly>
                            <input type="hidden" readonly class="form-control" name="sitename"
                                value="{{ $data->site->id }}" readonly>
                        </div>
                        <div class="form-group">
                            <label>Shift Day</label>
                            <select name="day" id="" class="form-control">
                                <option value="" selected disabled>--Select Shift Day--</option>
                                @foreach ($data->monitoring_staff->sortBy('shift_day') as $shift)
                                    <option value="{{ $shift->shift_day }}">
                                        @if ($shift->shift_day == 1)
                                            Monday
                                        @elseif($shift->shift_day == 2)
                                            Tuesday
                                        @elseif($shift->shift_day == 3)
                                            Wednesday
                                        @elseif($shift->shift_day == 4)
                                            Thursday
                                        @elseif($shift->shift_day == 5)
                                            Friday
                                        @elseif($shift->shift_day == 6)
                                            Saturday
                                        @elseif($shift->shift_day == 7)
                                            Sunday
                                        @else
                                            ...
                                        @endif
                                    </option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Type of Activity</label>
                            <select class="form-control" name="ActivityType">
                                @foreach ($activities as $activity)
                                    <option value="{{ $activity->id }}">{{ $activity->Activity_Type }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Reason of Activity</label>
                            <textarea name="reasonofactivity" class="textarea form-control" id="description" cols="40" rows="5"></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-primary" value="Submit" />
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- end misconductmodal -->

    <!-- Modal -->
    <div class="modal fade" id="editShiftModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Shift</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="{{ url('/monitoring/shift/update') }}" method="POST" class="form ">
                        @csrf
                        <input type="text" name="id" id="shift_id" hidden>
                        <div class="row">
                            <div class="col-12" style="margin:5px">
                                <label for="">Day</label>

                                <select name="shift_day" id="shift_day" class="form-control" disabled>
                                    <option disabled>--Select Day--</option>
                                    <option value="1">Monday</option>
                                    <option value="2">Tuesday</option>
                                    <option value="3">Wednesday</option>
                                    <option value="4">Thursday</option>
                                    <option value="5">Friday</option>
                                    <option value="6">Saturday</option>
                                    <option value="7">Sunday</option>
                                </select>
                            </div>
                            <div class="col-12" style="margin:5px">
                                <label for="">Staff </label>
                                <select name="guardname" id="guard_name" onchange="getData()" class="form-control">
                                    <option disabled>--Select Staff--</option>
                                    @foreach ($staffs as $staff)
                                    @php
										$subcont = subcontractorModel::find($staff->staffsubcontractor_name);
										$role = Role::find(auth()->user()->user_role);
									@endphp
                                        @if(auth()->user()->user_role == 0)
									                                    <option value="{{ $staff->id }}">{{ $staff->staff_name }}
                                        ({{ isset($subcont) ? $subcont->subcontractor_code : ''}})
                                    </option>
									@else
                                    <option value="{{ $staff->id }}">{{ $staff->staff_name }}
                                        ({{((isset($role)&&$role->see_code) || auth()->user()->user_role == 0) && isset($subcont)  ? $subcont->subcontractor_code : '' }})
                                    </option>
                                    @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-12" style="margin: 5px;">
                                <label for="">Staff Sia Number</label>
                                <input type="number" id="staff_sia" name="staff_sia" class="form-control" readonly>
                            </div>
                            <div class="col-12" style="margin: 5px;">
                                <label for="">Staff Phone Number</label>
                                <input type="number" id="staff_phone" name="staff_phone" class="form-control" readonly>
                            </div>
                            <div class="col-12" style="margin:5px">
                                <label for="">Charge Time in </label>
                               
                                <select name="time_in" id="time_in" class="form-control" onchange="checkTotalHours()">
                                   
                                    <option value="00:00" >00:00</option>
                                    <option value="00:15" >00:15</option>
                                    <option value="00:30" >00:30</option>
                                    <option value="00:45" >00:45</option>
                                    <option value="01:00" >01:00</option>
                                    <option value="01:15" >01:15</option>
                                    <option value="01:30" >01:30</option>
                                    <option value="01:45" >01:45</option>
                                    <option value="02:00" >02:00</option>
                                    <option value="02:15" >02:15</option>
                                    <option value="02:30" >02:30</option>
                                    <option value="02:45" >02:45</option>
                                    <option value="03:00" >03:00</option>
                                    <option value="03:15" >03:15</option>
                                    <option value="03:30" >03:30</option>
                                    <option value="03:45" >03:45</option>
                                    <option value="04:00" >04:00</option>
                                    <option value="04:15" >04:15</option>
                                    <option value="04:30" >04:30</option>
                                    <option value="04:45" >04:45</option>
                                    <option value="05:00" >05:00</option>
                                    <option value="05:15" >05:15</option>
                                    <option value="05:30" >05:30</option>
                                    <option value="05:45" >05:45</option>
                                    <option value="06:00" >06:00</option>
                                    <option value="06:15" >06:15</option>
                                    <option value="06:30" >06:30</option>
                                    <option value="06:45" >06:45</option>
                                    <option value="07:00" >07:00</option>
                                    <option value="07:15" >07:15</option>
                                    <option value="07:30" >07:30</option>
                                    <option value="07:45" >07:45</option>
                                    <option value="08:00" >08:00</option>
                                    <option value="08:15" >08:15</option>
                                    <option value="08:30" >08:30</option>
                                    <option value="08:45" >08:45</option>
                                    <option value="09:00" >09:00</option>
                                    <option value="09:15" >09:15</option>
                                    <option value="09:30" >09:30</option>
                                    <option value="09:45" >09:45</option>
                                    <option value="10:00" >10:00</option>
                                    <option value="10:15" >10:15</option>
                                    <option value="10:30" >10:30</option>
                                    <option value="10:45" >10:45</option>
                                    <option value="11:00" >11:00</option>
                                    <option value="11:15" >11:15</option>
                                    <option value="11:30" >11:30</option>
                                    <option value="11:45" >11:45</option>
                                    <option value="12:00" >12:00</option>
                                    <option value="12:15" >12:15</option>
                                    <option value="12:30" >12:30</option>
                                    <option value="12:45" >12:45</option>
                                    <option value="13:00" >13:00</option>
                                    <option value="13:15" >13:15</option>
                                    <option value="13:30" >13:30</option>
                                    <option value="13:45" >13:45</option>
                                    <option value="14:00" >14:00</option>
                                    <option value="14:15" >14:15</option>
                                    <option value="14:30" >14:30</option>
                                    <option value="14:45" >14:45</option>
                                    <option value="15:00" >15:00</option>
                                    <option value="15:15" >15:15</option>
                                    <option value="15:30" >15:30</option>
                                    <option value="15:45" >15:45</option>
                                    <option value="16:00" >16:00</option>
                                    <option value="16:15" >16:15</option>
                                    <option value="16:30" >16:30</option>
                                    <option value="16:45" >16:45</option>
                                    <option value="17:00" >17:00</option>
                                    <option value="17:15" >17:15</option>
                                    <option value="17:30" >17:30</option>
                                    <option value="17:45" >17:45</option>
                                    <option value="18:00" >18:00</option>
                                    <option value="18:15" >18:15</option>
                                    <option value="18:30" >18:30</option>
                                    <option value="18:45" >18:45</option>
                                    <option value="19:00" >19:00</option>
                                    <option value="19:15" >19:15</option>
                                    <option value="19:30" >19:30</option>
                                    <option value="19:45" >19:45</option>
                                    <option value="20:00" >20:00</option>
                                    <option value="20:15" >20:15</option>
                                    <option value="20:30" >20:30</option>
                                    <option value="20:45" >20:45</option>
                                    <option value="21:00" >21:00</option>
                                    <option value="21:15" >21:15</option>
                                    <option value="21:30" >21:30</option>
                                    <option value="21:45" >21:45</option>
                                    <option value="22:00" >22:00</option>
                                    <option value="22:15" >22:15</option>
                                    <option value="22:30" >22:30</option>
                                    <option value="22:45" >22:45</option>
                                    <option value="23:00" >23:00</option>
                                    <option value="23:15" >23:15</option>
                                    <option value="23:30" >23:30</option>
                                    <option value="23:45" >23:45</option>
                                </select>
                            </div>
                            <div class="col-12" style="margin:5px">
                                <label for="">Charge Time out </label>
                                <select name="time_out" id="time_out" class="form-control" onchange="checkTotalHours()">
                                  
                                    <option value="00:00" >00:00</option>
                                    <option value="00:15" >00:15</option>
                                    <option value="00:30" >00:30</option>
                                    <option value="00:45" >00:45</option>
                                    <option value="01:00" >01:00</option>
                                    <option value="01:15" >01:15</option>
                                    <option value="01:30" >01:30</option>
                                    <option value="01:45" >01:45</option>
                                    <option value="02:00" >02:00</option>
                                    <option value="02:15" >02:15</option>
                                    <option value="02:30" >02:30</option>
                                    <option value="02:45" >02:45</option>
                                    <option value="03:00" >03:00</option>
                                    <option value="03:15" >03:15</option>
                                    <option value="03:30" >03:30</option>
                                    <option value="03:45" >03:45</option>
                                    <option value="04:00" >04:00</option>
                                    <option value="04:15" >04:15</option>
                                    <option value="04:30" >04:30</option>
                                    <option value="04:45" >04:45</option>
                                    <option value="05:00" >05:00</option>
                                    <option value="05:15" >05:15</option>
                                    <option value="05:30" >05:30</option>
                                    <option value="05:45" >05:45</option>
                                    <option value="06:00" >06:00</option>
                                    <option value="06:15" >06:15</option>
                                    <option value="06:30" >06:30</option>
                                    <option value="06:45" >06:45</option>
                                    <option value="07:00" >07:00</option>
                                    <option value="07:15" >07:15</option>
                                    <option value="07:30" >07:30</option>
                                    <option value="07:45" >07:45</option>
                                    <option value="08:00" >08:00</option>
                                    <option value="08:15" >08:15</option>
                                    <option value="08:30" >08:30</option>
                                    <option value="08:45" >08:45</option>
                                    <option value="09:00" >09:00</option>
                                    <option value="09:15" >09:15</option>
                                    <option value="09:30" >09:30</option>
                                    <option value="09:45" >09:45</option>
                                    <option value="10:00" >10:00</option>
                                    <option value="10:15" >10:15</option>
                                    <option value="10:30" >10:30</option>
                                    <option value="10:45" >10:45</option>
                                    <option value="11:00" >11:00</option>
                                    <option value="11:15" >11:15</option>
                                    <option value="11:30" >11:30</option>
                                    <option value="11:45" >11:45</option>
                                    <option value="12:00" >12:00</option>
                                    <option value="12:15" >12:15</option>
                                    <option value="12:30" >12:30</option>
                                    <option value="12:45" >12:45</option>
                                    <option value="13:00" >13:00</option>
                                    <option value="13:15" >13:15</option>
                                    <option value="13:30" >13:30</option>
                                    <option value="13:45" >13:45</option>
                                    <option value="14:00" >14:00</option>
                                    <option value="14:15" >14:15</option>
                                    <option value="14:30" >14:30</option>
                                    <option value="14:45" >14:45</option>
                                    <option value="15:00" >15:00</option>
                                    <option value="15:15" >15:15</option>
                                    <option value="15:30" >15:30</option>
                                    <option value="15:45" >15:45</option>
                                    <option value="16:00" >16:00</option>
                                    <option value="16:15" >16:15</option>
                                    <option value="16:30" >16:30</option>
                                    <option value="16:45" >16:45</option>
                                    <option value="17:00" >17:00</option>
                                    <option value="17:15" >17:15</option>
                                    <option value="17:30" >17:30</option>
                                    <option value="17:45" >17:45</option>
                                    <option value="18:00" >18:00</option>
                                    <option value="18:15" >18:15</option>
                                    <option value="18:30" >18:30</option>
                                    <option value="18:45" >18:45</option>
                                    <option value="19:00" >19:00</option>
                                    <option value="19:15" >19:15</option>
                                    <option value="19:30" >19:30</option>
                                    <option value="19:45" >19:45</option>
                                    <option value="20:00" >20:00</option>
                                    <option value="20:15" >20:15</option>
                                    <option value="20:30" >20:30</option>
                                    <option value="20:45" >20:45</option>
                                    <option value="21:00" >21:00</option>
                                    <option value="21:15" >21:15</option>
                                    <option value="21:30" >21:30</option>
                                    <option value="21:45" >21:45</option>
                                    <option value="22:00" >22:00</option>
                                    <option value="22:15" >22:15</option>
                                    <option value="22:30" >22:30</option>
                                    <option value="22:45" >22:45</option>
                                    <option value="23:00" >23:00</option>
                                    <option value="23:15" >23:15</option>
                                    <option value="23:30" >23:30</option>
                                    <option value="23:45" >23:45</option>
                                </select>
                            </div>
                            
                            <div class="col-12" style="margin:5px">
                                <label for="">Pay Time in </label>
                               
                                <select name="guard_time_in" id="payable_time_in" class="form-control" onchange="checkPayableHours()">
                                   
                                    <option value="00:00" >00:00</option>
                                    <option value="00:15" >00:15</option>
                                    <option value="00:30" >00:30</option>
                                    <option value="00:45" >00:45</option>
                                    <option value="01:00" >01:00</option>
                                    <option value="01:15" >01:15</option>
                                    <option value="01:30" >01:30</option>
                                    <option value="01:45" >01:45</option>
                                    <option value="02:00" >02:00</option>
                                    <option value="02:15" >02:15</option>
                                    <option value="02:30" >02:30</option>
                                    <option value="02:45" >02:45</option>
                                    <option value="03:00" >03:00</option>
                                    <option value="03:15" >03:15</option>
                                    <option value="03:30" >03:30</option>
                                    <option value="03:45" >03:45</option>
                                    <option value="04:00" >04:00</option>
                                    <option value="04:15" >04:15</option>
                                    <option value="04:30" >04:30</option>
                                    <option value="04:45" >04:45</option>
                                    <option value="05:00" >05:00</option>
                                    <option value="05:15" >05:15</option>
                                    <option value="05:30" >05:30</option>
                                    <option value="05:45" >05:45</option>
                                    <option value="06:00" >06:00</option>
                                    <option value="06:15" >06:15</option>
                                    <option value="06:30" >06:30</option>
                                    <option value="06:45" >06:45</option>
                                    <option value="07:00" >07:00</option>
                                    <option value="07:15" >07:15</option>
                                    <option value="07:30" >07:30</option>
                                    <option value="07:45" >07:45</option>
                                    <option value="08:00" >08:00</option>
                                    <option value="08:15" >08:15</option>
                                    <option value="08:30" >08:30</option>
                                    <option value="08:45" >08:45</option>
                                    <option value="09:00" >09:00</option>
                                    <option value="09:15" >09:15</option>
                                    <option value="09:30" >09:30</option>
                                    <option value="09:45" >09:45</option>
                                    <option value="10:00" >10:00</option>
                                    <option value="10:15" >10:15</option>
                                    <option value="10:30" >10:30</option>
                                    <option value="10:45" >10:45</option>
                                    <option value="11:00" >11:00</option>
                                    <option value="11:15" >11:15</option>
                                    <option value="11:30" >11:30</option>
                                    <option value="11:45" >11:45</option>
                                    <option value="12:00" >12:00</option>
                                    <option value="12:15" >12:15</option>
                                    <option value="12:30" >12:30</option>
                                    <option value="12:45" >12:45</option>
                                    <option value="13:00" >13:00</option>
                                    <option value="13:15" >13:15</option>
                                    <option value="13:30" >13:30</option>
                                    <option value="13:45" >13:45</option>
                                    <option value="14:00" >14:00</option>
                                    <option value="14:15" >14:15</option>
                                    <option value="14:30" >14:30</option>
                                    <option value="14:45" >14:45</option>
                                    <option value="15:00" >15:00</option>
                                    <option value="15:15" >15:15</option>
                                    <option value="15:30" >15:30</option>
                                    <option value="15:45" >15:45</option>
                                    <option value="16:00" >16:00</option>
                                    <option value="16:15" >16:15</option>
                                    <option value="16:30" >16:30</option>
                                    <option value="16:45" >16:45</option>
                                    <option value="17:00" >17:00</option>
                                    <option value="17:15" >17:15</option>
                                    <option value="17:30" >17:30</option>
                                    <option value="17:45" >17:45</option>
                                    <option value="18:00" >18:00</option>
                                    <option value="18:15" >18:15</option>
                                    <option value="18:30" >18:30</option>
                                    <option value="18:45" >18:45</option>
                                    <option value="19:00" >19:00</option>
                                    <option value="19:15" >19:15</option>
                                    <option value="19:30" >19:30</option>
                                    <option value="19:45" >19:45</option>
                                    <option value="20:00" >20:00</option>
                                    <option value="20:15" >20:15</option>
                                    <option value="20:30" >20:30</option>
                                    <option value="20:45" >20:45</option>
                                    <option value="21:00" >21:00</option>
                                    <option value="21:15" >21:15</option>
                                    <option value="21:30" >21:30</option>
                                    <option value="21:45" >21:45</option>
                                    <option value="22:00" >22:00</option>
                                    <option value="22:15" >22:15</option>
                                    <option value="22:30" >22:30</option>
                                    <option value="22:45" >22:45</option>
                                    <option value="23:00" >23:00</option>
                                    <option value="23:15" >23:15</option>
                                    <option value="23:30" >23:30</option>
                                    <option value="23:45" >23:45</option>
                                </select>
                            </div>
                            <div class="col-12" style="margin:5px">
                                <label for="">Pay Time out </label>
                                <select name="guard_time_out" id="payable_time_out" class="form-control" onchange="checkPayableHours()">
                                  
                                    <option value="00:00" >00:00</option>
                                    <option value="00:15" >00:15</option>
                                    <option value="00:30" >00:30</option>
                                    <option value="00:45" >00:45</option>
                                    <option value="01:00" >01:00</option>
                                    <option value="01:15" >01:15</option>
                                    <option value="01:30" >01:30</option>
                                    <option value="01:45" >01:45</option>
                                    <option value="02:00" >02:00</option>
                                    <option value="02:15" >02:15</option>
                                    <option value="02:30" >02:30</option>
                                    <option value="02:45" >02:45</option>
                                    <option value="03:00" >03:00</option>
                                    <option value="03:15" >03:15</option>
                                    <option value="03:30" >03:30</option>
                                    <option value="03:45" >03:45</option>
                                    <option value="04:00" >04:00</option>
                                    <option value="04:15" >04:15</option>
                                    <option value="04:30" >04:30</option>
                                    <option value="04:45" >04:45</option>
                                    <option value="05:00" >05:00</option>
                                    <option value="05:15" >05:15</option>
                                    <option value="05:30" >05:30</option>
                                    <option value="05:45" >05:45</option>
                                    <option value="06:00" >06:00</option>
                                    <option value="06:15" >06:15</option>
                                    <option value="06:30" >06:30</option>
                                    <option value="06:45" >06:45</option>
                                    <option value="07:00" >07:00</option>
                                    <option value="07:15" >07:15</option>
                                    <option value="07:30" >07:30</option>
                                    <option value="07:45" >07:45</option>
                                    <option value="08:00" >08:00</option>
                                    <option value="08:15" >08:15</option>
                                    <option value="08:30" >08:30</option>
                                    <option value="08:45" >08:45</option>
                                    <option value="09:00" >09:00</option>
                                    <option value="09:15" >09:15</option>
                                    <option value="09:30" >09:30</option>
                                    <option value="09:45" >09:45</option>
                                    <option value="10:00" >10:00</option>
                                    <option value="10:15" >10:15</option>
                                    <option value="10:30" >10:30</option>
                                    <option value="10:45" >10:45</option>
                                    <option value="11:00" >11:00</option>
                                    <option value="11:15" >11:15</option>
                                    <option value="11:30" >11:30</option>
                                    <option value="11:45" >11:45</option>
                                    <option value="12:00" >12:00</option>
                                    <option value="12:15" >12:15</option>
                                    <option value="12:30" >12:30</option>
                                    <option value="12:45" >12:45</option>
                                    <option value="13:00" >13:00</option>
                                    <option value="13:15" >13:15</option>
                                    <option value="13:30" >13:30</option>
                                    <option value="13:45" >13:45</option>
                                    <option value="14:00" >14:00</option>
                                    <option value="14:15" >14:15</option>
                                    <option value="14:30" >14:30</option>
                                    <option value="14:45" >14:45</option>
                                    <option value="15:00" >15:00</option>
                                    <option value="15:15" >15:15</option>
                                    <option value="15:30" >15:30</option>
                                    <option value="15:45" >15:45</option>
                                    <option value="16:00" >16:00</option>
                                    <option value="16:15" >16:15</option>
                                    <option value="16:30" >16:30</option>
                                    <option value="16:45" >16:45</option>
                                    <option value="17:00" >17:00</option>
                                    <option value="17:15" >17:15</option>
                                    <option value="17:30" >17:30</option>
                                    <option value="17:45" >17:45</option>
                                    <option value="18:00" >18:00</option>
                                    <option value="18:15" >18:15</option>
                                    <option value="18:30" >18:30</option>
                                    <option value="18:45" >18:45</option>
                                    <option value="19:00" >19:00</option>
                                    <option value="19:15" >19:15</option>
                                    <option value="19:30" >19:30</option>
                                    <option value="19:45" >19:45</option>
                                    <option value="20:00" >20:00</option>
                                    <option value="20:15" >20:15</option>
                                    <option value="20:30" >20:30</option>
                                    <option value="20:45" >20:45</option>
                                    <option value="21:00" >21:00</option>
                                    <option value="21:15" >21:15</option>
                                    <option value="21:30" >21:30</option>
                                    <option value="21:45" >21:45</option>
                                    <option value="22:00" >22:00</option>
                                    <option value="22:15" >22:15</option>
                                    <option value="22:30" >22:30</option>
                                    <option value="22:45" >22:45</option>
                                    <option value="23:00" >23:00</option>
                                    <option value="23:15" >23:15</option>
                                    <option value="23:30" >23:30</option>
                                    <option value="23:45" >23:45</option>
                                </select>
                            </div>
                           
                            <div class="col-12" style="margin:5px">
                                <input type="text" name="shifthours" id="total_hours" hidden>
                                <span id="total_Hours"></span>
                            </div>
                            <div class="col-12" style="margin:5px">
                                <input type="text" name="guard_hours" id="guard_hours" hidden>
                                <span id="guard_Hours"></span>
                            </div>
                            <div class="col-12" style="margin:5px;">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
        <iframe name="print_frame" width="0" height="0" frameborder="0" src="about:blank"></iframe>
    </div>


    
    <script type="text/javascript">
        function editShift(obj) {
            var shift_id = obj.id;
            var shift_day = obj.shift_day;
            var time_in = obj.time_in;
            var time_out = obj.time_out;
            var staff_id = obj.staff_id;
            var staff_sia = obj.staff_sia;
            var staff_phone = obj.staff_phone;
            var total_hours = obj.total_hours;
            var guard_time_in = obj.guard_time_in;
            var guard_time_out = obj.guard_time_out;
            var guard_hours = obj.guard_hours;
            
            $('#shift_id').val(shift_id);
            $("#shift_day > option[value=" + shift_day + "]").attr("selected", "selected");
            $("#time_in > option[value='" + time_in + "']").attr("selected", "selected");
            $("#time_out > option[value='" + time_out + "']").attr("selected", "selected");
            
            $("#guard_name > option[value=" + staff_id + "]").attr("selected", "selected");
            $('#total_hours').val(total_hours);
            $('#total_Hours').text('Chargeable Total: ' + total_hours + ' Hours');

            $("#payable_time_in > option[value='" + guard_time_in + "']").attr("selected", "selected");
            $("#payable_time_out > option[value='" + guard_time_out + "']").attr("selected", "selected");
            $('#guard_hours').val(guard_hours);
            $('#staff_sia').val(staff_sia);
            $('#staff_phone').val(staff_phone);
            $('#guard_Hours').text('Payable Total: ' + guard_hours + ' Hours');
            $('#editShiftModal').modal('show');

            console.log(obj);
        }

        function checkTotalHours() {
            let time_in = $('#time_in').val();
            let time_out = $('#time_out').val();

            if (time_in != '' && time_out != '') {
                if (time_in > time_out) {
                    let time_start = new Date("01/01/2023 " + time_in).getTime();
                    let time_end = new Date("01/02/2023 " + time_out).getTime();

                    let time_diff = (time_end - time_start) / 3600000;

                    $('#total_Hours').text('Chargeable Total: ' + time_diff + ' hours');
                    $('#total_hours').val(time_diff);
                }else {
                    let time_start = new Date("01/01/2023 " + time_in).getTime();
                    let time_end = new Date("01/01/2023 " + time_out).getTime();

                    let time_diff = (time_end - time_start) / 3600000;

                    $('#total_Hours').text('Chargeable Total: ' + time_diff + ' hours');
                    $('#total_hours').val(time_diff);
                }
            }
        }

        function checkPayableHours() {
            let payable_time_in = $('#payable_time_in').val();
            let payable_time_out = $('#payable_time_out').val();

            if (payable_time_in != '' && payable_time_out != '') {
                if (payable_time_in > payable_time_out) {
                    let time_start = new Date("01/01/2023 " + payable_time_in).getTime();
                    let time_end = new Date("01/02/2023 " + payable_time_out).getTime();

                    let time_diff = (time_end - time_start) / 3600000;

                    $('#guard_Hours').text('Payable Total: ' + time_diff + ' hours');
                    $('#guard_hours').val(time_diff);
                } else {
                    let time_start = new Date("01/01/2023 " + payable_time_in).getTime();
                    let time_end = new Date("01/01/2023 " + payable_time_out).getTime();

                    let time_diff = (time_end - time_start) / 3600000;

                    $('#guard_Hours').text('Payable Total: ' + time_diff + ' hours');
                    $('#guard_hours').val(time_diff);
                }
            }
        }
        
        function getData(){
                const guard_id = $('#guard_name').val();
                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('/get-guard-data') }}" + `/${guard_id}`,
                    success: function(response) {
                        if (response != null) {
                            const guard = response;
                            $('#staff_sia').val(guard.staff_SIA);
                            $('#staff_phone').val(guard.staff_phone);
                            
                        }
                    }
                })
            }
    </script>
    <script type="text/javascript">
        function printRoaster() {
            $('#action').hide();
            $('.action-c').hide();
            var printWindow = window.open('', '', 'height=1000,width=800');
            printWindow.document.write('<html><head><title>Monitoring Shifts</title>');
            
            //Print the Table CSS.
            printWindow.document.write('<style type = "text/css">');
	        printWindow.document.write('table, th, td {   border: 1px solid; }');
            printWindow.document.write('</style>');
            printWindow.document.write('</head>');
            
            printWindow.document.write('<body>');
            var divContents = document.getElementById("staff-roaster");
            printWindow.document.write(divContents.outerHTML);
            $('#action').show();
            $('.action-c').show();
            printWindow.document.write('</body>');
    
            printWindow.document.write('</html>');
            printWindow.open(pdfUrl);
            printWindow.document.close();
        }
    </script>

@endsection

@extends('layout')
@section('title', 'Steel Toe | Add Incident Report')
@section('content')
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Add new Incident Report
            <a href="{{ url('incident-report/all') }}" class="float-end">View All</a>
        </div>
        <div class="card-body">

            @if ($errors->any())
                @foreach ($errors->all() as $error)
                    <p class="text-danger">{{ $error }}</p>
                @endforeach
            @endif

            @if (Session::has('error'))
                <p class="text-danger">{{ session('error') }}</p>
            @endif

            @if (Session::has('msg'))
                <p class="text-sucess">{{ session('msg') }}</p>
            @endif
            <form method="post" action="{{ url('incident-reports/store') }}" enctype="multipart/form-data">
                @csrf
                {{-- <input type="hidden" name="id" value="{{isset($data) ? $data->id : ''}}"> --}}
                <table class="table table-bordered">
                    <tr>
                        <th colspan="2">
                            <h6>Site Details</h6>
                        </th>
                    </tr>
                    <tr>
                        <th>Client Name</th>
                        <td>

                            <select name="client_id" id="client_id" class="form-control" onchange="getSites();">
                                <option selected disabled>Select Client</option>
                                @foreach ($clients as $client)
                                    <option value="{{ $client->id }}" {{isset($data) && $data->client_id == $client->id ? 'Selected' : ''}}>{{ $client->clientname }}</option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Site Name</th>
                        <td>
                            <select name="site_id" id="site_id" class="form-control" onchange="getMonitorings()">
                                <option selected disabled>Select Site name</option>
                                {{-- @foreach ($sites as $site)
                                    <option value="{{ $site->id }}" {{isset($data) && $data->site_id == $site->id ? 'Selected' : ''}}>{{ $site->sitename }}</option>
                                @endforeach --}}
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Site Staff Name <small>(if present at time of incident)</small></th>
                        <td>
                            <input type="text" class="form-control" name="site_staff">
                        </td>
                    </tr>
                    <tr>
                    <tr>

                        <th colspan="2">
                            <h6>Shift Detais</h6>
                        </th>
                    </tr>
                    <tr>
                        <th>Select Week Commencing</th>
                        <td>
                            <select name="Week_Commencing" id="visit_week" class="form-control" onchange="getStaff()">
                                <option selected disabled>Select week</option>
                                {{-- @foreach ($weeks->unique('Week_Commencing') as $week)
                                    <option value="{{ $week->Week_Commencing }}">{{ $week->Week_Commencing }}</option>
                                @endforeach --}}
                                {{-- @if (isset($data) && isset($weeks))
									@foreach ($weeks as $week)
										<option value="{{$week->Week_Commencing}}" {{$week->Week_Commencing == $data->Week_Commencing ? 'Selected' : ''}}>{{$week->Week_Commencing}}</option>
									@endforeach
								@endif --}}
                            </select>

                        </td>
                    </tr>
                    <tr>
                        <th>Select Shift Day</th>
                        <td>
                            <select name="shift_day" id="visit_day" class="form-control" onchange="getGuards()">
                                <option selected disabled>Select visit day</option>
                                <option value="Monday">Monday</option>
                                <option value="Tuesday">Tuesday</option>
                                <option value="Wednesday">Wednesday</option>
                                <option value="Thursday">Thursday</option>
                                <option value="Friday">Friday</option>
                                <option value="Saturday">Saturday</option>
                                <option value="Sunday">Sunday</option>
                                {{-- @if (isset($data) && isset($days))
									@foreach ($days as $day)
										@if ($day->shift_day == 1)
											<option value="Monday" {{ $data->shift_day == 'Monday' ? 'Selected' : ''}}>Monday</option>
										@elseif($day->shift_day == 2)	
											<option value="Tuesday" {{ $data->shift_day == 'Tuesday' ? 'Selected' : ''}}>Tuesday</option>
										@elseif($day->shift_day == 3)	
											<option value="Wednesday" {{ $data->shift_day == 'Wednesday' ? 'Selected' : ''}}>Wednesday</option>
										@elseif($day->shift_day == 4)	
											<option value="Thursday" {{ $data->shift_day == 'Thursday' ? 'Selected' : ''}}>Thursday</option>
										@elseif($day->shift_day == 5)	
											<option value="Friday" {{ $data->shift_day == 'Friday' ? 'Selected' : ''}}>Friday</option>
										@elseif($day->shift_day == 6)	
											<option value="Saturday" {{ $data->shift_day == 'Saturday' ? 'Selected' : ''}}>Saturday</option>
										@elseif($day->shift_day == 7)	
											<option value="Sunday" {{ $data->shift_day == 'Sunday' ? 'Selected' : ''}}>Sunday</option>
										@endif
									@endforeach
								@endif --}}
                            </select>

                        </td>
                    </tr>
                    <tr>
                        <th>Select Time of Incident</th>
                        <td>
                            <select name="time" id="" class="form-control">
                                <option selected disabled>Select Incident Time</option>
                                <option value="00:00">00:00</option>
                                <option value="00:15">00:15</option>
                                <option value="00:30">00:30</option>
                                <option value="00:45">00:45</option>
                                <option value="01:00">01:00</option>
                                <option value="01:15">01:15</option>
                                <option value="01:30">01:30</option>
                                <option value="01:45">01:45</option>
                                <option value="02:00">02:00</option>
                                <option value="02:15">02:15</option>
                                <option value="02:30">02:30</option>
                                <option value="02:45">02:45</option>
                                <option value="03:00">03:00</option>
                                <option value="03:15">03:15</option>
                                <option value="03:30">03:30</option>
                                <option value="03:45">03:45</option>
                                <option value="04:00">04:00</option>
                                <option value="04:15">04:15</option>
                                <option value="04:30">04:30</option>
                                <option value="04:45">04:45</option>
                                <option value="05:00">05:00</option>
                                <option value="05:15">05:15</option>
                                <option value="05:30">05:30</option>
                                <option value="05:45">05:45</option>
                                <option value="06:00">06:00</option>
                                <option value="06:15">06:15</option>
                                <option value="06:30">06:30</option>
                                <option value="06:45">06:45</option>
                                <option value="07:00">07:00</option>
                                <option value="07:15">07:15</option>
                                <option value="07:30">07:30</option>
                                <option value="07:45">07:45</option>
                                <option value="08:00">08:00</option>
                                <option value="08:15">08:15</option>
                                <option value="08:30">08:30</option>
                                <option value="08:45">08:45</option>
                                <option value="09:00">09:00</option>
                                <option value="09:15">09:15</option>
                                <option value="09:30">09:30</option>
                                <option value="09:45">09:45</option>
                                <option value="10:00">10:00</option>
                                <option value="10:15">10:15</option>
                                <option value="10:30">10:30</option>
                                <option value="10:45">10:45</option>
                                <option value="11:00">11:00</option>
                                <option value="11:15">11:15</option>
                                <option value="11:30">11:30</option>
                                <option value="11:45">11:45</option>
                                <option value="12:00">12:00</option>
                                <option value="12:15">12:15</option>
                                <option value="12:30">12:30</option>
                                <option value="12:45">12:45</option>
                                <option value="13:00">13:00</option>
                                <option value="13:15">13:15</option>
                                <option value="13:30">13:30</option>
                                <option value="13:45">13:45</option>
                                <option value="14:00">14:00</option>
                                <option value="14:15">14:15</option>
                                <option value="14:30">14:30</option>
                                <option value="14:45">14:45</option>
                                <option value="15:00">15:00</option>
                                <option value="15:15">15:15</option>
                                <option value="15:30">15:30</option>
                                <option value="15:45">15:45</option>
                                <option value="16:00">16:00</option>
                                <option value="16:15">16:15</option>
                                <option value="16:30">16:30</option>
                                <option value="16:45">16:45</option>
                                <option value="17:00">17:00</option>
                                <option value="17:15">17:15</option>
                                <option value="17:30">17:30</option>
                                <option value="17:45">17:45</option>
                                <option value="18:00">18:00</option>
                                <option value="18:15">18:15</option>
                                <option value="18:30">18:30</option>
                                <option value="18:45">18:45</option>
                                <option value="19:00">19:00</option>
                                <option value="19:15">19:15</option>
                                <option value="19:30">19:30</option>
                                <option value="19:45">19:45</option>
                                <option value="20:00">20:00</option>
                                <option value="20:15">20:15</option>
                                <option value="20:30">20:30</option>
                                <option value="20:45">20:45</option>
                                <option value="21:00">21:00</option>
                                <option value="21:15">21:15</option>
                                <option value="21:30">21:30</option>
                                <option value="21:45">21:45</option>
                                <option value="22:00">22:00</option>
                                <option value="22:15">22:15</option>
                                <option value="22:30">22:30</option>
                                <option value="22:45">22:45</option>
                                <option value="23:00">23:00</option>
                                <option value="23:15">23:15</option>
                                <option value="23:30">23:30</option>
                                <option value="23:45">23:45</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Incident Report Date</th>
                        <td>
                            <input type="text" id="date-picker" class="form-control" name="report_date">
                        </td>
                    </tr>
                   
                        <th colspan="2">
                            <h6>Employee Details</h6>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <div>Select Guard on Shift
                        </th>
                        <td>
                            <select class="form-control" name="guard_id" id="staff_id" onchange="getGuardData()">
                                <option value="" selected disabled>Select Guard</option>
                                {{-- @if (isset($data) && isset($guards))
								@foreach ($guards as $guard)
									<option value="{{$guard->id}}" {{$guard->id == $data->guard_id ? 'Selected' : ''}}>{{$guard->staff_name}}</option>
								@endforeach
							@endif --}}
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Guard SIA Number</th>
                        <td>
                            <input type="text" class="form-control" name="guard_sia" id="guard_sia" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Guard Phone Number</th>
                        <td>
                            <input type="text" class="form-control" name="guard_phone" id="guard_phone" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <h6>Incident Detais</h6>
                        </th>
                    </tr>
                    <tr>
                        <th>Detail of Incident</th>
                        <td>
                            <textarea name="detail" class="form-control" rows="7" cols="50"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Action Taken</th>
                        <td>
                            <textarea name="action" class="form-control"  rows="7" cols="50"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>People Informed</th>
                        <td>
                            <textarea name="people_informed" class="form-control"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Was police involved? </th>
                        <td>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="police_involved" id="inlineRadio1"
                                    value="No">
                                <label class="form-check-label" for="inlineRadio1">No</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="police_involved" id="inlineRadio2"
                                    value="Yes">
                                <label class="form-check-label" for="inlineRadio2">Yes</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2">
                            <h6>Witness Details</h6>
                        </th>
                    </tr>
                    <tr>
                        <th>Witness Name</th>
                        <td>
                            <input type="text" class="form-control" name="witness_name">
                        </td>
                    </tr>
                    <tr>
                        <th>Witness Phone</th>
                        <td>
                            <input type="text" class="form-control" name="witness_phone">
                        </td>
                    </tr>
                    <tr>
                        <th>Witness Email</th>
                        <td>
                            <input type="text" class="form-control" name="witness_email">
                        </td>
                    </tr>
                    <tr>
                        <th>Witness Statement</th>
                        <td>
                            <textarea name="witness_statement" class="form-control" rows="7" cols="50"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Support Evidence</th>
                        <td>
                            <input type="file" class="form-control" name="file" multiple>
                            <b>if more then 1 file, ZIP files into 1 ZIP file to upload it</b>
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
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script>
            $(function() {
                $("#date-picker").datepicker({
                    dateFormat: 'dd/mm/yy', //check change
                    // changeMonth: true,
                    // changeYear: true
                });
            });
        </script>

        <script type="text/javascript">
            // console.log('it works......');
            function getClients() {

                let week = $('#visit_week').val();
                week = week.replaceAll("/", "-");
                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('monitorings/get-shifts-clients') }}" + `/${week}`,
                    success: function(response) {
                        var len = 0;
                        $('#client_id').find('option').not(':first').remove();
                        if (response != null) {
                            len = response.length;
                        }
                        console.log(response);
                        if (len > 0) {
                            for (var i = 0; i < len; i++) {

                                var clientname = response[i].clientname;
                                var client_id = response[i].id
                                var option = "<option value = '" + client_id + "'>" + clientname + "</option>";
                                $('#client_id').append(option);
                            }
                        }
                    }
                });
            }

            function getSites() {
                let client = $('#client_id').val();
                // let week = $('#visit_week').val();
                // week = week.replaceAll("/", "-");

                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('monitorings/get-shifts-sites') }}" + `/${client}`,
                    success: function(response) {
                        console.log(response);
                        var len = 0;
                        $('#site_id').find('option').not(':first').remove();
                        if (response != null) {
                            len = response.length;
                        }
                        console.log(response);
                        if (len > 0) {
                            for (var i = 0; i < len; i++) {

                                var sitename = response[i].sitename;
                                var site_id = response[i].id
                                var option = "<option value = '" + site_id + "'>" + sitename + "</option>";
                                $('#site_id').append(option);
                            }
                        }
                    }
                });
            }

            function getMonitorings() {
                let id = $('#site_id').val();
                // alert(id)
                // alert("{{ URL::to('/get-monitoring') }}"+`/${id}`);
                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('/get-monitoring') }}" + `/${id}`,
                    success: function(response) {
                        var len = 0;
                        $('#visit_week').find('option').not(':first').remove();
                        if (response != null) {
                            len = response.length;
                        }

                        if (len > 0) {
                            for (var i = 0; i < len; i++) {

                                var Week_Commencing = response[i].Week_Commencing;
                                var monitoring_id = response[i].id;
                                var option = "<option value = '" + Week_Commencing + "'>" + Week_Commencing +
                                    "</option>";
                                $('#visit_week').append(option);
                            }
                        }
                    }
                })
            }

            function getGuards() {
                let client = $('#client_id').val();
                let week = $('#visit_week').val();
                let site = $('#site_id').val();
                let day = $('#visit_day').val();
                week = week.replaceAll("/", "-");

                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('monitorings/get-shifts-guards') }}" + `/${week}/${site}/${day}`,
                    success: function(response) {
                        var len = 0;
                        $('#staff_id').find('option').not(':first').remove();
                        if (response != null) {
                            len = response.length;
                        }
                        console.log(response);
                        if (len > 0) {
                            for (var i = 0; i < len; i++) {

                                var staff_name = response[i].staff_name;
                                var staff_id = response[i].id
                                var option = "<option value = '" + staff_id + "'>" + staff_name + "</option>";
                                $('#staff_id').append(option);
                            }
                        }
                    }
                });
            }

            


            function getShiftDays() {
                let site_id = $('#site_id').val();
                let week = $('#visit_week').val();
                week = week.replaceAll("/", "-");
                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('monitorings/get-shifts-days') }}" + `/${week}/${site_id}`,
                    success: function(response) {
                        var len = 0;
                        $('#visit_day').find('option').not(':first').remove();
                        if (response != null) {
                            len = response.length;
                        }

                        if (len > 0) {
                            for (var i = 0; i < len; i++) {

                                var day = response[i].shift_day;
                                var shift_id = response[i].id;
                                if (day == 1) {
                                    var shift_day = 'Monday'
                                } else if (day == 2) {
                                    var shift_day = 'Tuesday'

                                } else if (day == 3) {
                                    var shift_day = 'Wednesday'
                                } else if (day == 4) {
                                    var shift_day = 'Thursday'
                                } else if (day == 5) {
                                    var shift_day = 'Friday'
                                } else if (day == 6) {
                                    var shift_day = 'Saturday'
                                } else if (day == 7) {
                                    var shift_day = 'Sunday'
                                } else {
                                    var shift_day = 'Not Mentioned'
                                }
                                var option = "<option value = '" + shift_day + "'>" + shift_day + "</option>";
                                $('#visit_day').append(option);
                            }
                        }
                    }
                })
            }

            function getStaff() {
                let site_id = $('#site_id').val();
                let week = $('#visit_week').val();
                week = week.replaceAll("/", "-");
                var day = $('#visit_day').val();
                if (day == 'Monday') {
                    var shift_day = 1
                } else if (day == 'Tuesday') {
                    var shift_day = 2

                } else if (day == 'Wednesday') {
                    var shift_day = 3
                } else if (day == 'Thursday') {
                    var shift_day = 4
                } else if (day == 'Friday') {
                    var shift_day = 5
                } else if (day == 'Saturday') {
                    var shift_day = 6
                } else if (day == 'Sunday') {
                    var shift_day = 7
                } else {
                    var shift_day = 0;
                }

                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('shifts/get-shift-staffs') }}" + `/${week}/${site_id}/${shift_day}`,
                    success: function(response) {
                        var len = 0;
                        $('#staff_id').find('option').not(':first').remove();
                        if (response != null) {
                            len = response.length;
                        }

                        if (len > 0) {
                            for (var i = 0; i < len; i++) {

                                var guard_name = response[i].staff_name;
                                var guard_id = response[i].id;

                                var option = "<option value = '" + guard_id + "'>" + guard_name + "</option>";
                                $('#staff_id').append(option);
                            }
                        }
                    }
                })
            }

            function getGuardData() {
                const guard_id = $('#staff_id').val();
                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('/get-guard-data') }}" + `/${guard_id}`,
                    success: function(response) {
                        if (response != null) {
                            const guard = response;
                            $('#guard_sia').val(guard.staff_SIA);
                            $('#guard_phone').val(guard.staff_phone);

                        }
                    }
                })
            }

            function giveRating(input, rating) {
                for (let index = 1; index <= 5; index++) {
                    $('#' + input + '-' + index).css('color', 'black');

                }
                for (let index = 1; index <= rating; index++) {
                    console.log('#' + input + '-' + index);
                    let id = '#' + input + '-' + index;
                    $('#' + input + '-' + index).css('color', 'gold');

                }
                var text = '';
                if (rating == 1) {
                    text = 'Very Poor'
                } else if (rating == 2) {
                    text = 'Poor'
                } else if (rating == 3) {
                    text = 'Average'
                } else if (rating == 4) {
                    text = 'Good'
                } else if (rating == 5) {
                    text = 'Excellent'
                }

                $('#rating-text-' + input).text(text);
                $('#input-' + input).val(rating);
            }

            window.onload = function() {
                for (let input = 1; input <= 4; input++) {
                    rating = $('#input-' + input).val();
                    for (let index = 1; index <= rating; index++) {
                        console.log('#' + input + '-' + index);
                        let id = '#' + input + '-' + index;
                        $('#' + input + '-' + index).css('color', 'gold');

                    }
                }
            };
        </script>

    @endsection

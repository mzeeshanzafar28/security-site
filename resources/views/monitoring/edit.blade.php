@extends('layout')
@section('title', 'Steel Toe | Monitoring Edit')
@section('content')
    @php
        use Carbon\Carbon;
        use App\Models\subcontractorModel;
        use App\Models\stafflistModel;
        use App\Models\Role;
    @endphp
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Clients
            <a href="{{ url('monitoring') }}" class="float-end">View All</a>
        </div>
        <div class="card-body">

            @if ($errors->any())
                @foreach ($errors->all() as $error)
                    <p class="text-danger">{{ $error }}</p>
                @endforeach
            @endif
            @if (Session::has('msg'))
                <p class="text-sucess">{{ session('msg') }}</p>
            @endif
            <form method="post" action="{{ url('monitoring/' . $data->id) }}" enctype="multipart/form-data">
                @method('put')
                @csrf
                <table class="table table-bordered">
                    <tr>
                        <th>Week Commencing</th>
                        <td>
                            <input type="text" id="date-picker" value="{{ $data->Week_Commencing }}" name="weekcommencing"
                                class="form-control" />
                        </td>
                    </tr>
                    <tr>
                        <th>Site Name</th>
                        <td>
                            <select name="site" class="form-control">
                                <option value="">-- Select Site --</option>
                                @foreach ($sites as $site)
                                    <option value="{{ $site->id }}"
                                        {{ $site->id == $data->sitename_id ? 'selected' : '' }}>{{ $site->sitename }}
                                    </option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Site Hours Per Week</th>
                        <td>
                            <input type="text" id="site-hours" value="{{ $data->Total_hours }}" name="hoursperweek"
                                class="form-control" readonly />
                        </td>
                    </tr>
                    <tr>
                        <th>Add Shifts</th>
                        <td>
                            <div style="margin-bottom: 10px;">
                                <label for="1">Monday</label>
                                <input type="checkbox" id="1" value="0">
                                <label for="2">Tuesday</label>
                                <input type="checkbox" id="2" value="0">
                                <label for="3">Wednesday</label>
                                <input type="checkbox" id="3" value="0">
                                <label for="4">Thursday</label>
                                <input type="checkbox" id="4" value="0">
                                <label for="5">Friday</label>
                                <input type="checkbox" id="5" value="0">
                                <label for="6">Saturday</label>
                                <input type="checkbox" id="6" value="0">
                                <label for="7">Sunday</label>
                                <input type="checkbox" id="7" value="0">
                            </div>
                            {{-- Day: 
					<select name="shift_day[]" id="shift_day">
						<option value="" selected disabled>-- Select Day --</option>
						<option value="1">Monday</option>
						<option value="2">Tuesday</option>
						<option value="3">Wednesday</option>
						<option value="4">Thursday</option>
						<option value="5">Friday</option>
						<option value="6">Saturday</option>
						<option value="7">Sunday</option>
					</select> --}}

                            Time in 
                            <select name="time_in" id="time_in" onchange="checkTotalHours()">
								<option selected disabled>Select Start Time</option>
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
                            {{-- <input type="time" id="time_in" name="time_in[]" onchange="checkTotalHours()"> --}}
                            Time out 
                            <select name="time_out" id="time_out" onchange="checkTotalHours()">
								<option selected disabled>Select End Time</option>
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
                            {{-- <input type="time" id="time_out" onchange="checkTotalHours()" name="time_out[]"> --}}
                            Guard Name <select name="guardname[]" id="guard_name" size="1">
                                <option value="">-- Select Guard Name --</option>
                                @foreach ($staffname as $staff)
                                    {{-- <option value="{{ $staff->id }}">{{ $staff->staff_name }}
                                        ({{ subcontractorModel::find($staff->staffsubcontractor_name)->subcontractor_code ?? '' }})
                                    </option> --}}
									@php
										$subcont = subcontractorModel::find($staff->staffsubcontractor_name);
										$role = Role::find(auth()->user()->user_role);
									@endphp
                                    @if(auth()->user()->user_role == 0)
									                                    <option value="{{ $staff->id }}">{{ $staff->staff_name }}
                                        ({{ isset($subcont)? $subcont->subcontractor_code : ''}})
                                    </option>
									@else
                                    <option value="{{ $staff->id }}">{{ $staff->staff_name }}
                                        ({{((isset($role)&&$role->see_code) || auth()->user()->user_role == 0) && isset($subcont)  ? $subcont->subcontractor_code : '' }})
                                    </option>
                                    @endif
                                @endforeach
                            </select>
                            <input type="text" name="shifthours[]" id="total_hours" hidden>
                            <span id="total_Hours"></span>

                            <button class="btn btn-primary btn-sm" onclick="addShift()" type="button"> Add</button>


                            {{-- Monday <input type="checkbox" name="shift_day1" value="{{$data->shift_day_1}}">
					<br>
					Time in <input type="time" id="time_in" name="time_in_day1" value="{{$data->start_time_day1}}">
					Time out <input type="time" id="time_out" name="time_out_day1" value="{{$data->end_time_day1}}">
					Guard Name <select name="guardname_day1" size="1">
						<option value="">-- Select Guard Name --</option>
						@foreach ($staffname as $staff)
						<option value="{{$staff->id}}" {{$staff->id == $data->guardname_day1 ? 'selected' : ''}}>{{$staff->staff_name}}</option>
						@endforeach
					</select>
					<br>
					Tuesday <input type="checkbox" name="shift_day2" value="{{$data->shift_day_1}}">
					<br>
					Time in <input type="time" id="time_in" name="time_in_day2" value="{{$data->start_time_day2}}">
					Time out <input type="time" id="time_out" name="time_out_day2" value="{{$data->end_time_day2}}">
					Guard Name <select name="guardname_day2" size="1">
						<option value="">-- Select Guard Name --</option>
						@foreach ($staffname as $staff)
						<option value="{{$staff->id}}" {{$staff->id == $data->guardname_day2 ? 'selected' : ''}}>{{$staff->staff_name}}</option>
						@endforeach
					</select>
					<br>
					Wednesday <input type="checkbox" name="shift_day3" value="{{$data->shift_day_3}}">
					<br>
					Time in <input type="time" id="time_in" name="time_in_day3" value="{{$data->start_time_day3}}">
					Time out <input type="time" id="time_out" name="time_out_day3" value="{{$data->end_time_day3}}">
					Guard Name <select name="guardname_day3" size="1">
						<option value="">-- Select Guard Name --</option>
						@foreach ($staffname as $staff)
						<option value="{{$staff->id}}" {{$staff->id == $data->guardname_day3 ? 'selected' : ''}}>{{$staff->staff_name}}</option>
						@endforeach
					</select>
					<br>
					Thursday <input type="checkbox" name="shift_day4" value="{{$data->shift_day_4}}">
					<br>
					Time in <input type="time" id="time_in" name="time_in_day4" value="{{$data->start_time_day4}}">
					Time out <input type="time" id="time_out" name="time_out_day4" value="{{$data->end_time_day4}}">
					Guard Name <select name="guardname_day4" size="1">
						<option value="">-- Select Guard Name --</option>
						@foreach ($staffname as $staff)
						<option value="{{$staff->id}}" {{$staff->id == $data->guardname_day4 ? 'selected' : ''}}>{{$staff->staff_name}}</option>
						@endforeach
					</select>
					<br>
					Friday <input type="checkbox" name="shift_day5" value="{{$data->shift_day_5}}">
					<br>
					Time in <input type="time" id="time_in" name="time_in_day5" value="{{$data->start_time_day5}}">
					Time out <input type="time" id="time_out" name="time_out_day5" value="{{$data->end_time_day5}}">
					Guard Name <select name="guardname_day5" size="1">
						<option value="">-- Select Guard Name --</option>
						@foreach ($staffname as $staff)
						<option value="{{$staff->id}}" {{$staff->id == $data->guardname_day5 ? 'selected' : ''}}>{{$staff->staff_name}}</option>
						@endforeach
					</select>
					<br>
					Saturday <input type="checkbox" name="shift_day6" value="{{$data->shift_day_6}}">
					<br>
					Time in <input type="time" id="time_in" name="time_in_day6" value="{{$data->start_time_day6}}">
					Time out <input type="time" id="time_out" name="time_out_day6" value="{{$data->end_time_day6}}">
					Guard Name <select name="guardname_day6" size="1">
						<option value="">-- Select Guard Name --</option>
						@foreach ($staffname as $staff)
						<option value="{{$staff->id}}" {{$staff->id == $data->guardname_day6 ? 'selected' : ''}}>{{$staff->staff_name}}</option>
						@endforeach
					</select>
					<br>
					Sunday <input type="checkbox" name="shift_day7" value="{{$data->shift_day_7}}">
					<br>
					Time in <input type="time" id="time_in" name="time_in_day7" value="{{$data->start_time_day7}}">
					Time out <input type="time" id="time_out" name="time_out_day7" value="{{$data->end_time_day7}}">
					Guard Name <select name="guardname_day7" size="1">
						<option value="">-- Select Guard Name --</option>
						@foreach ($staffname as $staff)
						<option value="{{$staff->id}}" {{$staff->id == $data->guardname_day7 ? 'selected' : ''}}>{{$staff->staff_name}}</option>
						@endforeach
					</select> --}}

                        </td>
                    </tr>
                    <tr style="" id="shifts-details">
                        <th>Shift Details</th>
                        <td>
                            <table class="table text-center">
                                <thead>
                                    <tr>
                                        <th>Day</th>
                                        <th>Time In</th>
                                        <th>Time Out</th>
                                        <th>Guard Name</th>
                                        <th>Total Hours</th>
                                    </tr>
                                </thead>
                                <tbody id="shift-rows">
                                    @foreach ($data->monitoring_staff as $shift)
                                        <tr>
                                            <td>
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

                                            </td>

                                            <td>{{ $shift->time_in }}</td>
                                            <td>{{ $shift->time_out }}</td>
                                            <td>{{ $shift->staff->staff_name ?? '' }}
                                                ({{ subcontractorModel::find($shift->staff->staffsubcontractor_name)->subcontractor_code ?? ''}})
                                            </td>
                                            <td>{{ $shift->total_hours }}</td>

                                        </tr>
                                    @endforeach
                                </tbody>
                                <input type="hidden" name="shifts" id="shifts">
                            </table>
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


        <script type="text/javascript">
            function checkTotalHours() {
                // console.log(day);
                let time_in = $('#time_in').val();
                let time_out = $('#time_out').val();

                // console.log(time_in > time_out);

                if (time_in != '' && time_out != '') {
                    if (time_in > time_out) {
                        let time_start = new Date("01/01/2023 " + time_in).getTime();
                        let time_end = new Date("01/02/2023 " + time_out).getTime();

                        let time_diff = (time_end - time_start) / 3600000;

                        $('#total_Hours').text('Total Hours: ' + time_diff + ' hours');
                        $('#total_hours').val(time_diff);
                    } else {
                        let time_start = new Date("01/01/2023 " + time_in).getTime();
                        let time_end = new Date("01/01/2023 " + time_out).getTime();

                        let time_diff = (time_end - time_start) / 3600000;

                        $('#total_Hours').text('Total Hours: ' + time_diff + ' hours');
                        $('#total_hours').val(time_diff);
                    }
                }

            }

            var staff = [];
            var Id = 1;

            function addShift() {
                // var shift_day = $('#shift_day').val();
                // var shift_dayText = $('#shift_day').children(':selected').text();
                var shift_time_in = $('#time_in').val();
                var shift_time_out = $('#time_out').val();
                var shift_staff_id = $('#guard_name').val();
                var shift_staff_name = $('#guard_name').children(':selected').text();
                var shift_total_hours = $('#total_hours').val();

                var site_hours = $('#site-hours').val();
                site_hours = parseFloat(site_hours);

                for (let index = 1; index <= 7; index++) {
                    if ($('#' + index).is(":checked")) {

                        var shift_day = index;
                        var shift_dayText = ''
                        if (shift_day == 1) {
                            shift_dayText = 'Monday'
                        } else if (shift_day == 2) {
                            shift_dayText = 'Tuesday'
                        } else if (shift_day == 3) {
                            shift_dayText = 'Wednesday'
                        } else if (shift_day == 4) {
                            shift_dayText = 'Thursday'
                        } else if (shift_day == 5) {
                            shift_dayText = 'Friday'
                        } else if (shift_day == 6) {
                            shift_dayText = 'Saturday'
                        } else if (shift_day == 7) {
                            shift_dayText = 'Sunday'
                        } else {
                            shift_dayText = ''
                        }
                        if (shift_day != '' && shift_dayText != '' && shift_time_in != '' && shift_time_out != '' &&
                            shift_staff_id != '' && shift_staff_name != '' && shift_total_hours) {

                            var staffObj = {
                                id: Id,
                                day: shift_day,
                                time_in: shift_time_in,
                                time_out: shift_time_out,
                                staff_id: shift_staff_id,
                                total_hours: shift_total_hours,
                            }

                            staff.push(staffObj)
                            Id++;
                            site_hours += parseFloat(staffObj.total_hours);
                            $('#site-hours').val(site_hours);

                            // console.log(staff);
                            // console.table(staff);
                            $('#shifts-details').show();

                            var row = '<tr><td>' + shift_dayText + '</td><td>' + shift_time_in + '</td><td>' + shift_time_out +
                                '</td><td>' + shift_staff_name + '</td><td>' + shift_total_hours + '</td></tr>';
                            // console.log(row);
                            $('#shift-rows').append(row);
                            $("#shift_day").val($("#shift_day option:first").val());
                            $("#guard_name").val($("#guard_name option:first").val());
                            $('#time_in').val('');
                            $('#time_out').val('');
                            $('#total_hours').val('');
                            $('#total_Hours').text('');


                            $('#shifts').val(JSON.stringify(staff));
                        }
                    }
                }
            }


            function addGuard(day) {

                var checkbox = document.getElementById('guard-check-' + day);

                if (checkbox.checked == true) {
                    $('#guard-2-day-' + day).show();
                } else {
                    $('#time_in' + day + '-2').val('');
                    $('#time_out' + day + '-2').val('');
                    $('#total_hours' + day + '-2').val('');
                    $('#total_hours_' + day + '-2').text('');
                    $("#guardname_day" + day + "-2").val($("#guardname_day" + day + "-2 option:first").val());
                    $('#guard-2-day-' + day).hide();
                }
            }
        </script>

            <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
            <link rel="stylesheet" href="/resources/demos/style.css">

            <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
            <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
            <script>
            $(function() {
                $("#date-picker").datepicker({
                dateFormat: 'dd/mm/yy',//check change
                // changeMonth: true,
                // changeYear: true
                });
            });
            </script>

    @endsection

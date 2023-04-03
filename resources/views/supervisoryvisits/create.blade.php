@extends('layout')
@section('title', 'Steel Toe | Add Supervisory Visit')
@section('content')
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Add new Supervisory Visit
            <a href="{{ url('supervisoryvisits/all') }}" class="float-end">View All</a>
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
            <form method="post" action="{{ url('supervisoryvisits/store') }}" enctype="multipart/form-data">
                @csrf
				<input type="hidden" name="visit_id" value="{{isset($data) ? $data->id : ''}}">
                <table class="table table-bordered">
                    <tr>
                        <th>Site Name</th>
                        <td>
                            <select name="site_id" id="site_id" onchange="getMonitorings()" class="form-control">
                                <option selected disabled>Select Site name</option>
                                @foreach ($sites as $site)
                                    <option value="{{ $site->id }}" {{isset($data) && $data->site_id == $site->id ? 'Selected' : ''}}>{{ $site->sitename }}</option>
                                @endforeach
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Select Visit Week</th>
                        <td>
                            <select name="date" id="visit_week" class="form-control" onchange="getShiftDays()">
                                <option selected disabled>Select visit week</option>
                                @if (isset($data) && isset($weeks))
									@foreach($weeks as $week)
										<option value="{{$week->Week_Commencing}}" {{$week->Week_Commencing == $data->date ? 'Selected' : ''}}>{{$week->Week_Commencing}}</option>
									@endforeach
								@endif
                            </select>
                            
                        </td>
                    </tr>
                    <tr>
                        <th>Select Visit Day</th>
                        <td>
                            <select name="day" id="visit_day" class="form-control" onchange="getStaff()">
                                <option selected disabled>Select visit day</option>
                                @if (isset($data) && isset($days))
									@foreach($days as $day)
										@if ($day->shift_day == 1)
											<option value="Monday" {{ $data->day == 'Monday' ? 'Selected' : ''}}>Monday</option>
										@elseif($day->shift_day == 2)	
											<option value="Tuesday" {{ $data->day == 'Tuesday' ? 'Selected' : ''}}>Tuesday</option>
										@elseif($day->shift_day == 3)	
											<option value="Wednesday" {{ $data->day == 'Wednesday' ? 'Selected' : ''}}>Wednesday</option>
										@elseif($day->shift_day == 4)	
											<option value="Thursday" {{ $data->day == 'Thursday' ? 'Selected' : ''}}>Thursday</option>
										@elseif($day->shift_day == 5)	
											<option value="Friday" {{ $data->day == 'Friday' ? 'Selected' : ''}}>Friday</option>
										@elseif($day->shift_day == 6)	
											<option value="Saturday" {{ $data->day == 'Saturday' ? 'Selected' : ''}}>Saturday</option>
										@elseif($day->shift_day == 7)	
											<option value="Sunday" {{ $data->day == 'Sunday' ? 'Selected' : ''}}>Sunday</option>
										@endif
									@endforeach
								@endif
                            </select>
                            
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>Select Guard on Shift
                        </th>
                        <td>
                            <select class="form-control" name="staff_id" id="staff_id">
                                <option value="" selected disabled>Select Guard</option>
								@if (isset($data) && isset($guards))
								@foreach($guards as $guard)
									<option value="{{$guard->id}}" {{$guard->id == $data->staff_id ? 'Selected' : ''}}>{{$guard->staff_name}}</option>
								@endforeach
							@endif
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Visit Type</th>
                        <td>
                            <select class="form-control" name="visit_type">
                                <option value="" selected disabled>Select Visit Type</option>
                                <option value="Announced" {{isset($data) && $data->visit_type == 'Announced' ? 'Selected' : '' }}>Announced</option>
                                <option value="Unannounced" {{isset($data) && $data->visit_type == 'Unannounced' ? 'Selected' : '' }}>Unannounced</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>Officer Image</th>
                        <td>
                            <input type="file" accept=".jpg,.png.jpeg" name="staff_image">
                        </td>
                    </tr>
                    <tr>
                        <th>Supervisor Name</th>
                        <td>
                            <input type="text" name="supervisor_name" placeholder="Supervisor Name" class="form-control" value="{{isset($data) ? $data->supervisor_name : ''}}" />
                        </td>
                    </tr>
					<tr>
                        <th>Ratings</th>
                        <td>
                           <strong> 1: very poor, 2: Poor, 3:Average, 4:Good, 5:Excellent </strong>
                        </td>
                    </tr>
                    <tr>
                        <th>Time keeping</th>
                        <td>
                            <span class="fas fa-star" id="1-1" onclick="giveRating(1, 1)"></span>
                            <span class="fas fa-star" id="1-2" onclick="giveRating(1, 2)"></span>
                            <span class="fas fa-star" id="1-3" onclick="giveRating(1, 3)"></span>
                            <span class="fas fa-star" id="1-4" onclick="giveRating(1, 4)"></span>
                            <span class="fas fa-star" id="1-5" onclick="giveRating(1, 5)"></span>
                            <span id="rating-text-1"></span>
                            <input type="text" name="time_keeping" class="form-control" id="input-1" value="{{isset($data) ? $data->time_keeping : '' }}" hidden />
                        </td>
                    </tr>
                    <tr>
                        <th>Appearence</th>
                        <td>
                            <span class="fas fa-star" id="2-1" onclick="giveRating(2, 1)"></span>
                            <span class="fas fa-star" id="2-2" onclick="giveRating(2, 2)"></span>
                            <span class="fas fa-star" id="2-3" onclick="giveRating(2, 3)"></span>
                            <span class="fas fa-star" id="2-4" onclick="giveRating(2, 4)"></span>
                            <span class="fas fa-star" id="2-5" onclick="giveRating(2, 5)"></span>
                            <span id="rating-text-2"></span>
                            <input type="text" name="appearnce" class="form-control" id="input-2" value="{{isset($data) ? $data->appearnce : '' }}" hidden />
                        </td>
                    </tr>
                    <tr>
                        <th>Attitude</th>
                        <td>
                            <span class="fas fa-star" id="3-1" onclick="giveRating(3, 1)"></span>
                            <span class="fas fa-star" id="3-2" onclick="giveRating(3, 2)"></span>
                            <span class="fas fa-star" id="3-3" onclick="giveRating(3, 3)"></span>
                            <span class="fas fa-star" id="3-4" onclick="giveRating(3, 4)"></span>
                            <span class="fas fa-star" id="3-5" onclick="giveRating(3, 5)"></span>
                            <span id="rating-text-3"></span>
                            <input type="text" name="attitude" class="form-control" id="input-3" value="{{isset($data) ? $data->attitude : '' }}" hidden />
                        </td>
                    </tr>
                    <tr>
                        <th>Communication</th>
                        <td>
                            <span class="fas fa-star" id="4-1" onclick="giveRating(4, 1)"></span>
                            <span class="fas fa-star" id="4-2" onclick="giveRating(4, 2)"></span>
                            <span class="fas fa-star" id="4-3" onclick="giveRating(4, 3)"></span>
                            <span class="fas fa-star" id="4-4" onclick="giveRating(4, 4)"></span>
                            <span class="fas fa-star" id="4-5" onclick="giveRating(4, 5)"></span>
                            <span id="rating-text-4"></span>
                            <input type="text" name="communication" class="form-control" id="input-4" value="{{isset($data) ? $data->communication : '' }}" hidden />
                        </td>
                    </tr>
                    <tr>
                        <th>Other Comments</th>
                        <td>
                            <textarea name="other_comments" id="" rows="5" class="form-control" style="resize:none;">{{isset($data) ? $data->other_comments : ''}}</textarea>
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
					rating = $('#input-'+input).val();
					for (let index = 1; index <= rating; index++) {
						console.log('#' + input + '-' + index);
						let id = '#' + input + '-' + index;
						$('#' + input + '-' + index).css('color', 'gold');

					}
				}
			};
        </script>

    @endsection

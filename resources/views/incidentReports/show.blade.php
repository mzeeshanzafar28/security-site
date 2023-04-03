@extends('layout')
@section('title', 'Steel Toe | Add Incident Report')
@section('content')
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Incident Report for {{$data->report_date}} {{$data->time}} at {{$data->site ? $data->site->sitename : ''}} for  {{$data->client ? $data->client->clientname : ''}}
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
                        {{-- <td></td> --}}
                        <th colspan="2"><h6>Shift Details</h6></th>
                    </tr>
                    <tr>
                        <th>Week Commencing</th>
                        <td>
                            <input type="text" class="form-control" name="Week_Commencing" value="{{$data->Week_Commencing}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Shift Days</th>
                        <td>
                            <input type="text" class="form-control" name="shift_day" value="{{$data->shift_day}}" readonly>
                            
                        </td>
                    </tr>
                    <tr>
                        <th>Time of Incident</th>
                        <td>
                            <input type="text" class="form-control" value="{{$data->time}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Incident Report Date</th>
                        <td>
                            <input type="text" class="form-control" name="report_date" value="{{$data->report_date}}" id="date-picker" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"><h6>Site Details</h6></th>
                    </tr>
                    <tr>
                        <th>Client Name</th>
                        <td>
                            <input type="text" class="form-control" name="client_id" value="{{$data->client ? $data->client->clientname : ''}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Site Name</th>
                        <td>
                            <input type="text" class="form-control" name="site_id" value="{{$data->site ? $data->site->sitename : ''}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Site Staff Name <small>(If present during the incident)</small></th>
                        <td>
                            <input type="text" class="form-control" name="site_staff" value="{{$data->site_staff}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"><h6>Employee Details</h6></th>
                    </tr>
                    <tr>
                        <th>Guard Name</th>
                        <td>
                            <input type="text" class="form-control" name="guard_id" value="{{$data->staff ? $data->staff->staff_name : ''}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Guard SIA Number</th>
                        <td>
                            <input type="text" class="form-control" name="guard_sia" value="{{$data->staff ? $data->staff->staff_SIA : ''}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Guard Phone Number</th>
                        <td>
                            <input type="text" class="form-control" name="guard_phone" value="{{$data->staff ? $data->staff->staff_phone : ''}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"><h6>Incident Detais</h6></th>
                    </tr>
                    <tr>
                        <th>Details of Incident</th>
                        <td>
                            <textarea name="detail" class="form-control" rows="7" cols="50" readonly>{{$data->detail}}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Action Taken</th>
                        <td>
                            <textarea name="action" class="form-control" rows="7" cols="50" readonly>{{$data->action}}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>People Informed</th>
                        <td>
                            <textarea name="people_informed" class="form-control" readonly>{{$data->people_informed}}</textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>Was Police Informed and Involved?</th>
                        <td>
                            <input type="text" class="form-control" value="{{$data->police_involved}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="2"><h6>Witness Details</h6></th>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td>
                            <input type="text" class="form-control" name="witness_name" value="{{$data->witness_name}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Email</th>
                        <td>
                            <input type="text" class="form-control" name="witness_email" value="{{$data->witness_email}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Phone</th>
                        <td>
                            <input type="text" class="form-control" name="witness_phone" value="{{$data->witness_phone}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Witness Statement</th>
                        <td>
                            <textarea class="form-control" name="witness_statement" rows="7" cols="50" readonly>{{$data->witness_statement}}</textarea>
                        </td>
                    </tr>
                    
                    <tr>
                        <th>Files</th>
                        <td>
                            
                            <a href="{{url('steeltoe/public/uploads/'.$data->file)}}" download> <b>Click Here to Download Supporting Evidences</b></a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
        {{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
        </script> --}}
        <script src="{{ asset('/js/script.js') }}"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
 		<link rel="stylesheet" href="/resources/demos/style.css">
        <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      	<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
		<script>
			$(function() {
			//    $("#date-picker").datepicker({
			// 	dateFormat: 'dd/mm/yy',//check change
    			// changeMonth: true,
    			// changeYear: true
			   });
			});
		</script>

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

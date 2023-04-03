@extends('layout')
@section('title', 'Steel Toe |  Supervisory Visit')
@section('content')
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
             Supervisory Visit Details
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
            <form method="post" action="{{ url('supervisoryvisits/store') }}">
                @csrf
                <table class="table table-bordered">
                    <tr>
                        <th>Site Name</th>
                        <td>
                            <input class="form-control" type="text" value="{{$data->site ? $data->site->sitename : ''}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Select Visit Week</th>
                        <td>
                            <input class="form-control" type="text" value="{{$data->date}}" readonly>
                            
                        </td>
                    </tr>
                    <tr>
                        <th>Select Visit Day</th>
                        <td>
                            <input class="form-control" type="text" value="{{$data->day}}" readonly>

                        </td>
                    </tr>
                    <tr>
                        <th>
                            <div>Select Guard on Shift
                        </th>
                        <td>
                            <input class="form-control" type="text" value="{{$data->staff ? $data->staff->staff_name : ''}}" readonly>

                        </td>
                    </tr>
                    <tr>
                        <th>Visit Type</th>
                        <td>
                            <input class="form-control" type="text" value="{{$data->visit_type}}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <th>Officer Image</th>
                        <td>
                            <div style="widows: 300px; height:200px">
                                <img src="{{url('/uploads/'.$data->staff_image)}}" style="widows: 300px; height:200px; object-fit:cover" alt="">
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <th>Supervisor Name</th>
                        <td>
                            <input class="form-control" type="text" value="{{$data->supervisor_name}}" readonly>
                            
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
                            @for ($i =1 ; $i <=$data->time_keeping ; $i++)
                                <span class="fas fa-star" style="color:gold"></span>
                            @endfor
                            @if ($data->time_keeping == 1) 
                                Very Poor
                            @elseif ($data->time_keeping == 2) 
                                Poor
                            @elseif ($data->time_keeping == 3) 
                                Average
                            @elseif ($data->time_keeping == 4) 
                                Good
                            @elseif ($data->time_keeping == 5) 
                                Excellent
                            @endif
                            
                        </td>
                    </tr>
                    <tr>
                        <th>Appearence</th>
                        <td>
                            @for ($i =1 ; $i <=$data->appearnce ; $i++)
                                <span class="fas fa-star" style="color:gold"></span>
                            @endfor
                            @if ($data->appearnce == 1) 
                                Very Poor
                            @elseif ($data->appearnce == 2) 
                                Poor
                            @elseif ($data->appearnce == 3) 
                                Average
                            @elseif ($data->appearnce == 4) 
                                Good
                            @elseif ($data->appearnce == 5) 
                                Excellent
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Attitude</th>
                        <td>
                            @for ($i =1 ; $i <= $data->attitude ; $i++)
                                <span class="fas fa-star" style="color:gold"></span>
                            @endfor
                            @if ($data->attitude == 1) 
                                Very Poor
                            @elseif ($data->attitude == 2) 
                                Poor
                            @elseif ($data->attitude == 3) 
                                Average
                            @elseif ($data->attitude == 4) 
                                Good
                            @elseif ($data->attitude == 5) 
                                Excellent
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Communication</th>
                        <td>
                            @for ($i =1 ; $i <= $data->communication ; $i++)
                                <span class="fas fa-star" style="color:gold"></span>
                            @endfor
                            @if ($data->communication == 1) 
                                Very Poor
                            @elseif ($data->communication == 2) 
                                Poor
                            @elseif ($data->communication == 3) 
                                Average
                            @elseif ($data->communication == 4) 
                                Good
                            @elseif ($data->communication == 5) 
                                Excellent
                            @endif
                        </td>
                    </tr>
                    <tr>
                        <th>Other Comments</th>
                        <td>
                            <textarea name="other_comments" id="" rows="5" class="form-control" style="resize:none;" readonly>{{$data->other_comments}}</textarea>
                        </td>
                    </tr>
                    {{-- <tr>
                        <td colspan="2">
                            <input type="submit" class="btn btn-primary" value="Submit" />
                        </td>

                    </tr> --}}

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
        </script>

    @endsection

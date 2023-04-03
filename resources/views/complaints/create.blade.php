@extends('layout')
@section('title','Steel Toe | Add Complaints')
@section('content')
@php
	use App\Models\sites;
@endphp
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Complaints 
		<a href="{{url('complaints')}}" class="float-end">View All</a>
	</div>
	<div class="card-body">
		
		@if($errors->any())
			@foreach($errors->all() as $error)
				<p class="text-danger">{{$error}}</p>
				@endforeach
		@endif
		@php
            
        @endphp
		@if(Session::has('msg'))
		<p class="text-sucess">{{session('msg')}}</p>
		@endif
		<form method="post" action="{{url('complaint/save')}}">
			@csrf
		<table class="table table-bordered">
			<tr >
				<th style="max-width: 150px;">Activity Type</th>
				<td>
					<input type="text" name="id" class="form-control" value="{{isset($complaint) ? $complaint->id : ''}}" hidden/>
					<input type="text" name="Activity_Type" class="form-control" value="{{isset($complaint) ? $complaint->Activity_Type : ''}}" hidden/>
                    <select name="Activity_Type" id="" class="form-control" {{isset($complaint) ? 'disabled' : ''}}>
                        <option selected disabled>select activity</option>
                        @foreach ($activities as $activity)
                            <option value="{{$activity->id}}" {{isset($complaint) && $activity->id == $complaint->Activity_Type ? 'selected':''}}>{{$activity->Activity_Type}}</option>
                        @endforeach
                    </select>
				</td>
			</tr>
			<tr >
				<th style="max-width: 150px;">Reason Of Activity</th> 
				<td>
					<textarea type="text" name="reason_of_activity" class="form-control" cols="10" style="resize: none">{{isset($complaint) ? $complaint->reason_of_activity :''}}</textarea>
				</td>
			</tr>
			<tr >
				<th style="max-width: 150px;">Site Name</th>
				<td>
					<input type="text" name="sitename_id" class="form-control" value="{{isset($complaint) ? $complaint->sitename_id : ''}}" hidden/>
					<select name="sitename_id" class="form-control" id="s_sites" onchange="getMonitorings()" {{isset($complaint) ? 'disabled' : ''}}>
						<option selected disabled>select site</option>
						@foreach ($sites as $site)
							<option value="{{$site->id}}" {{isset($complaint) && $complaint->sitename_id == $site->id ? 'Selected' : ''}}>{{$site->sitename}}</option>
						@endforeach
					</select>
					{{-- <input type="text" name="sitename_id" class="form-control" value="{{isset($complaint) && isset($complaint->site) ? $complaint->site->sitename : ''}}" readonly> --}}
				</td>
			</tr>
			<tr >
				<th style="max-width: 150px;">Week Commencing</th>
				<td>
					<select name="Week_Commencing" id="monitorings" class="form-control" onchange="getShifts()" >
						<option value="" selected disabled>select Week Commencing</option>
						@if (isset($complaint))
							@foreach ($monitorings as $monitoring)
								<option value="{{$monitoring->id}}" {{$monitoring->id ==  $complaint->Week_Commencing ? 'Selected' : ''}}>{{$monitoring->Week_Commencing}}</option>
							@endforeach
						@endif

					</select>
					{{-- <input type="text" name="Week_Commencing" class="form-control" value="{{isset($complaint) ? $complaint->Week_Commencing : ''}}" readonly> --}}
					
				</td>
			</tr>
			<tr >
				<th style="max-width: 150px;">Shift Day</th>
				<td>
					<select name="day" id="shift-day" class="form-control">
						<option value="" selected disabled>select Shift Day</option>
						@if (isset($complaint))
							@foreach ($shifts as $shift)
								<option value="{{$shift->shift_day}}" {{$shift->shift_day ==  $complaint->day ? 'Selected' : ''}}>
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
									Not Mentioned
									@endif
								</option>
							@endforeach
						@endif
					</select>
					{{-- <input type="text" name="Week_Commencing" class="form-control" value="{{isset($complaint) ? $complaint->Week_Commencing : ''}}" readonly> --}}
					
				</td>
			</tr>
			<tr >
				<th style="max-width: 150px;">Complaint Status</th>
				<td>
					<select name="status" id="" class="form-control">
						<option value="0" selected>Pending</option>
						<option value="1" {{isset($complaint) && $complaint->status == 1 ? 'Selected' : ''}}>Investigating</option>
						<option value="2" {{isset($complaint) && $complaint->status == 2 ? 'Selected' : ''}}>Resolved</option>
					</select>
				</td>
			</tr>
			@if (isset($complaint))
				<tr >
					<th style="max-width: 150px;">Date of Complaint</th>
					<td>
						<input class="form-control" type="date" name="complaint_date" value="{{$complaint->complaint_date ?? ''}}">
					</td>
				</tr>
				<tr >
					<th style="max-width: 150px;">Client Name</th>
					<td>
						@isset($complaint)
							@php
								
								$site = sites::with('client')->find($complaint->sitename_id);
							@endphp
						@endisset
						<input class="form-control" type="text" id="client_name" name="client_name" {{isset($complaint) ? 'readonly' : ''}} value="{{isset($site) ? $site->client->clientname : ''}}">
					</td>
				</tr>
				{{-- <tr >
					<th style="max-width: 150px;">Client Email</th>
					<td>
						<input class="form-control" type="text" name="client_email">
					</td>
				</tr> --}}
				<tr >
					<th style="max-width: 150px;">Complaint Recieved
					</th>
					<td>
						<textarea class="form-control" type="text" name="complain_recieved">{{$complaint->complain_recieved ?? ''}}</textarea>
					</td>
				</tr>
				<tr >
					<th style="max-width: 150px;" >Supplier name</th>
					<td>
					<input type="text" name="suplier_name" class="form-control" value="{{isset($complaint) ? $complaint->suplier_name : ''}}" hidden/>
					<select name="suplier_name" id="sub-cont" class="form-control" onchange="getStaff()" {{isset($complaint) ? 'disabled' : ''}}>
							<option value="" selected disabled>Select Supplier</option>
							@foreach ($subcontractors as $sub)
								<option value="{{$sub->id}}" {{$complaint->suplier_name == $sub->id ? 'Selected' : ''}}>{{$sub->subcontractor_name}}</option>
							@endforeach
						</select>
						{{-- <input class="form-control" type="text" name="suplier_name"> --}}
					</td>
				</tr>
				<tr >
					<th style="max-width: 150px;">Supplier Guard Name</th>
					<td>
					<input type="text" name="supplier_guard_name" class="form-control" value="{{isset($complaint) ? $complaint->supplier_guard_name : ''}}" hidden/>
					<select name="supplier_guard_name" id="sub-guard" class="form-control" {{isset($complaint) ? 'disabled' : ''}}>
							<option value="" selected disabled>Select Supplier Guard</option>
							@isset($officers)
								@foreach($officers as $staff)
								<option value="{{$staff->id}}" {{$complaint->supplier_guard_name == $staff->id ? 'Selected' : ''}}>{{$staff->staff_name}}</option>
								@endforeach
							@endisset
						</select>
						{{-- <input class="form-control" type="text" name="supplier_guard_name"> --}}
					</td>
				</tr>
				<tr >
					<th style="max-width: 150px;">What we done to resolve the complaint with the client</th>
					<td>
						<textarea class="form-control" type="text" name="complaint_resolve">{{$complaint->complaint_resolve ?? ''}}</textarea>
					</td>
				</tr>
				<tr >
					<th style="max-width: 150px;">How we communicated with the suppliers to ensure this does not happen again.</th>
					<td>
						<textarea class="form-control" type="text" name="supplier_communication">{{$complaint->supplier_communication ?? ''}}</textarea>
					</td>
				</tr>
				<tr >
					<th style="max-width: 150px;">Names of controllers during the shift
					</th>
					<td>
						<input class="form-control" type="text" name="controllers" value="{{$complaint->controllers ?? ''}}">
					</td>
				</tr>
				<tr >
					<th style="max-width: 150px;">Complaint Handler</th>
					<td>
						<input class="form-control" type="text" name="complaint_handler" value="{{$complaint->complaint_handler ?? ''}}">
					</td>
				</tr>
			@endif
			<tr >
				
				<td colspan="2">
					{{-- @if ($tab_perm->can_create == 1) --}}
						<input type="submit" class="btn btn-primary" value="Submit" />
					{{-- @endif --}}
				</td>
				
			</tr>

			</table>
		</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('/js/script.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

<script type="text/javascript">
	
	
	function getMonitorings() {
			
		

		let id = $('#s_sites').val();
		// alert(id)
		// alert("{{URL::to('/get-monitoring')}}"+`/${id}`);
		$.ajax({
			type:'get',
			url: "{{URL::to('/get-monitoring')}}"+`/${id}`,
			success:function(response){
				var len = 0;
				$('#monitorings').find('option').not(':first').remove();
				if (response != null){
                    len = response.length;
                }

				if(len > 0){
					for (var i=0; i<len; i++){
                    	
                        var Week_Commencing = response[i].Week_Commencing;
                        var monitoring_id = response[i].id;
                        var option = "<option value = '"+monitoring_id+"'>" + Week_Commencing  + "</option>";
                        $('#monitorings').append(option);
                    }
				}
			}
		})

		$.ajax({
			type:'get',
			url: "{{URL::to('/get-site-client-name')}}"+`/${id}`,
			success:function(response){
				console.log(response);
				var name = response.client.clientname;
				$('#client_name').val(name);
			}
		})
	}

	function getShifts() {
		let id = $('#monitorings').val();
		// week = week.replaceAll("/", "-");
		$.ajax({
			type:'get',
			url: "{{URL::to('monitoring/get-shifts')}}"+`/${id}`,
			success:function(response){
				var len = 0;
				$('#shift-day').find('option').not(':first').remove();
				if (response != null){
                    len = response.length;
                }

				if(len > 0){
					for (var i=0; i<len; i++){
                    	
                        var day = response[i].shift_day;
						var shift_id = response[i].id;
						if (day == 1) {
							var shift_day = 'Monday'
						}else if(day == 2){
							var shift_day = 'Tuesday'

						}else if(day == 3){
							var shift_day = 'Wednesday'
						}else if(day == 4){
							var shift_day = 'Thursday'
						}else if(day == 5){
							var shift_day = 'Friday'
						}else if(day == 6){
							var shift_day = 'Saturday'
						}else if(day == 7){
							var shift_day = 'Sunday'
						}else {
							var shift_day = 'Not Mentioned'
						}
                        var option = "<option value = '"+day+"'>" + shift_day  + "</option>";
                        $('#shift-day').append(option);
                    }
				}
			}
		})
	}

	function getStaff() {
		var id = $('#sub-cont').val();

		$.ajax({
			type:'get',
			url: "{{URL::to('/get-sub-contractor-staff')}}"+`/${id}`,
			success:function(response){
				var len = 0;
				$('#sub-guard').find('option').not(':first').remove();
				if (response != null){
                    len = response.length;
                }

				if(len > 0){
					for (var i=0; i<len; i++){
                    	
                        var name = response[i].staff_name;
                        var id = response[i].id;
                        var option = "<option value = '"+id+"'>" + name  + "</option>";
                        $('#sub-guard').append(option);
                    }
				}
			}
		})
	}
	
</script>
@endsection
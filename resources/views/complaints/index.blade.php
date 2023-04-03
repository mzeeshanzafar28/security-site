@extends('layout')
@section('title','Steel Toe | Complaints')
@section('content')

<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Complaints 
		@if (auth()->user()->parent_id == 0 || $tab_perm->can_create == 1)
			<a href="{{url('complaint/create')}}" class="float-end">Add New</a>
		@endif
	</div>
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Activity Type</th>
					<th>Reason of Activity</th>
					<th>Week Commencing</th>
					<th>Day</th>
					<th>Site</th>
					<th>Status</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				@foreach($complaints as $comp)
                    <tr>
                        <td>{{$comp->activity->Activity_Type}}</td>
                        <td>{{$comp->reason_of_activity}}</td>
                        <td>{{$comp->monitoring->Week_Commencing ?? ''}}</td>
						<td>
							@if ($comp->day == 1) 
                                Monday
                            @elseif($comp->day == 2)
                                Tuesday
                            @elseif($comp->day == 3)
                                Wednesday
                            @elseif($comp->day == 4)
                                Thursday
                            @elseif($comp->day == 5)
                                Friday
                            @elseif($comp->day == 6)
                                Saturday
                            @elseif($comp->day == 7)
                                Sunday
                            @else
                            Not mentioned
                            @endif
						</td>
                        <td>{{$comp->site->sitename}}</td>
                        <td>
							@if ($comp->status == 0)
							
							<span class="badge rounded-pill bg-danger">Pending</span>
							@endif
							@if ($comp->status == 1)
							<span class="badge rounded-pill bg-warning" >Investigating</span>
							
							@endif
							@if ($comp->status == 2)
							<span class="badge rounded-pill bg-success" >Resolved</span>
							
							
							@endif
						</td>
                        <td>
                            {{-- <a href="{{url('clients/'.$d->id)}}" class="btn btn-warning btn-sm">Show</a> --}}
                            @if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
                                <a href="{{url('complaint/'.$comp->id.'/edit')}}" class="btn btn-info btn-sm" style="margin-top: 5px">Update</a>
                                @if ($comp->status == 0)
                                    <a href="{{url('complaint/'.$comp->id.'/1/status')}}" class="btn btn-warning btn-sm" style="margin-top: 5px">Start Investigating</a>
                                @endif
                                @if ($comp->status == 1)
                                    <a href="{{url('complaint/'.$comp->id.'/2/status')}}" class="btn btn-success btn-sm" style="margin-top: 5px">Mark Resolved</a>
                                @endif
                            @endif
                            @if (auth()->user()->parent_id == 0 || $tab_perm->can_delete == 1)
                                <a onclick="return confirm('Are you sure to delete this data?')" href="{{url('occuredactivites/delete/'.$comp->id)}}" class="btn btn-danger btn-sm" style="margin-top: 5px">Delete</a>
                            @endif
                        </td>
                    </tr>
				@endforeach
			</tbody>
		</table>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('/js/script.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

@endsection
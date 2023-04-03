@extends('layout')
@section('title','Steel Toe | Roles')
@section('content')
<div class="card mb-4 mt-4">
	<div class="card-header">
		<i class="fas fa-table me-1"></i>
		Assigned Clients to {{$user->name}} 
		
		{{-- <a href="{{url('team/'.$user->id.'/assign-clients')}}" class="float-end">Assign Clients</a>	 --}}
		
		
	</div>
    @if (Session::has('msg'))
        <div class="">
            {{Session('msg')}}
        </div>
    @endif
	<div class="card-body">
		<table id="datatablesSimple">
			<thead>
				<tr>
					<th>Client Name</th>
					<th>Action</th>
					{{-- <th>Actions</th> --}}
				</tr>
			</thead>
			
			<tbody>
				{{-- @if($assignedClients->count() > 0) --}}
				@foreach($clients as $client)
				<tr>
					<td>{{$client->clientname}}</td>
					<td>
                        <a href="{{url('team/'.$user->id.'/assign/'.$client->id)}}" class="btn btn-success btn-sm" id="assign-{{$client->id}}">Assign</a>
                        <a href="{{url('team/'.$user->id.'/un-assign/'.$client->id)}}" class="btn btn-warning btn-sm" id="unAssign-{{$client->id}}" style="display: none">Unassign</a>
                    </td>
				</tr>
				@endforeach

                {{-- @else

				@endif --}}
			</tbody>
            {{-- <input type="hidden" value="{{}}"> --}}
		</table>
	</div>

    <!--BEGIN:: MODAL-->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              ...
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div>
        </div>
      </div>
    <!--END:: MODAL-->
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('/js/script.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

<script>
    var assignedClients = {!! json_encode($assignedClients) !!};
    

    if (assignedClients.length > 0) {
        for(const x in assignedClients){
            $('#assign-'+assignedClients[x].client_id).hide();
            $('#unAssign-'+assignedClients[x].client_id).show();
        }
    }
    console.log(assignedClients);
</script>

@endsection
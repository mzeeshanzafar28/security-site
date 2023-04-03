@extends('layout')
@section('content')
<div class="card mb-4 mt-4">
    <div class="card-header">
        <div class="row">
            <div class="col-6" style="margin-top:5px">
                <i class="fas fa-table me-1"></i>
                SIA List
            </div>
            <div class="col-6">
                
            </div>
        </div>
	</div>
    <div class="card-body">
        <div class="row">
            <form action="{{URL::to('/check-sia')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label for="">Select the CSV file to check sia</label>
                            <input type="file" accept=".csv" name="sia_file" class="form-control">
                            @error('sia_file')
                                <small class="text-danger">
                                    {{$message}}
                                </small>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <button class="btn btn-primary" type="submit">Check SIA</button>
                    </div>
                </div>
            </form>
        </div>
        @if (Session::has('error'))
            <span class="text-danger">{{session('error')}}</span>
        @endif
        <div class="row mt-5">
            <div class="col-12">
                <table class="table" id="datatablesSimple">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>SIA Number</th>
                            <th>Role</th>
                            <th>Sector</th>
                            <th>Expiry Date</th>
                            <th>Remaining Days</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if (isset($results))
                            @foreach ($results as $result)
                                @php
                                    $status = explode(" ", $result['status']);
                                    

                                @endphp
                                                                <tr class="{{$status[0] == 'Active' ? 'bg-success text-light' : 'bg-danger text-light'}}">

                                    <td>{{$result['first_name']}}</td>
                                    <td>{{$result['last_name']}}</td>
                                    <td>{{$result['sia_number']}}</td>
                                    <td>{{$result['role']}}</td>
                                    <td>{{$result['sector']}}</td>
                                    <td>{{$result['expiry_date']}}</td>
                                    <td>{{$result['remaining_days']}}</td>
                                    <td>{{$result['status']}}</td>
                                </tr>
                            @endforeach
                    
                        @endif
                    </tbody>
                </table>
            </div>
        </div>
        
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('/js/script.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

@endsection
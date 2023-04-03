@extends('layout')
@section('title', 'Steel Toe | Staff List')
@section('content')
@php
    use App\Models\Role;
@endphp
    <div class="card mb-4 mt-4">
        <div class="card-header">
            <i class="fas fa-table me-1"></i>
            Show {{ $data->staff_name }}'s staff profile
            <a href="{{ url('staff/stafflist') }}" class="float-end btn btn-sm btn-primary m-1">View All</a>
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
            <table class="table table-bordered">
                <tr>
                    <th>Company ID</th>
                    <td>
                        {{ $data->staff_companyid }}
                    </td>
                </tr>
                <tr>
                    <th>Staff Name</th>
                    <td>
                        {{ $data->staff_name }}
                        @php
							$role = Role::find(auth()->user()->user_role);
                        @endphp
                        @if(isset($data->subcontractor->subcontractor_code) && isset($role) && $role->see_code == 1)
                            ({{ $data->subcontractor->subcontractor_code }})
                        @endif
                    </td>
                </tr>
                <tr>
                    <th>Position</th>
                    <td>
                        {{ $data->staff_position }}
                    </td>
                </tr>
                <tr>
                    <th>Phone No</th>
                    <td>
                        {{ $data->staff_phone }}
                    </td>
                </tr>
                <tr>
                    <th>SIA Number</th>
                    <td>
                        {{ $data->staff_SIA }}
                    </td>
                </tr>
                <tr>
                    <th>SIA Expiry Date</th>
                    <td>
                        {{ $data->staff_SIA_expiry }}
                    </td>
                </tr>
                <tr>
                    <th>Email Address</th>
                    <td>
                        {{ $data->staff_email }}
                    </td>
                </tr>
                <tr>
                    <th>Location</th>
                    <td>
                        {{ $data->staff_location }}
                    </td>
                </tr>
                <tr>
                    <th>Pay Rate</th>
                    <td>
                        {{ $data->staff_payrate }}
                    </td>
                </tr>
                <tr>
                    <th>Sub-Contractor Name</th>
                    <td>
                        {{ $data->subcontractor->subcontractor_name ?? 'N/A' }}
                    </td>
                </tr>

                {{-- <tr>
                    <th>Add Documents</th>
                    <td>
                        <form action="{{ URL::to('add_documents') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row p-4">
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1"
                                        value="proof of address" checked>
                                    <label class="form-check-label" for="exampleRadios1">
                                        PROOF OF ADDRESS
                                    </label>
                                </div>
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2"
                                        value="sia front">
                                    <label class="form-check-label" for="exampleRadios2">
                                        SIA FRONT
                                    </label>
                                </div>
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3"
                                        value="sia backside">
                                    <label class="form-check-label" for="exampleRadios3">
                                        SIA BACKSIDE
                                    </label>
                                </div>
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1"
                                        value="passport">
                                    <label class="form-check-label" for="exampleRadios1">
                                        PASSPORT
                                    </label>
                                </div>
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2"
                                        value="brp front">
                                    <label class="form-check-label" for="exampleRadios2">
                                        BRP FRONT
                                    </label>
                                </div>
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3"
                                        value="brp backside">
                                    <label class="form-check-label" for="exampleRadios3">
                                        BRP BACKSIDE
                                    </label>
                                </div>
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2"
                                        value="right to work">
                                    <label class="form-check-label" for="exampleRadios2">
                                        RIGHT TO WORK
                                    </label>
                                </div>
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2"
                                        value="driving licence">
                                    <label class="form-check-label" for="exampleRadios2">
                                        DRIVING LICENSE
                                    </label>
                                </div>
                                <div class="form-check pt-2 col-md-6 col-sm-6 col-12 col-lg-4">
                                    <input class="form-check-input" type="radio" name="exampleRadios"
                                        id="exampleRadios2" value="proof of ni">
                                    <label class="form-check-label" for="exampleRadios2">
                                        PROOF OF NI
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="hidden" class="form-control" id="document_value" name="document_value"
                                    placeholder="" value="">
                                <input type="hidden" class="form-control" name="id_staff_list"
                                    value="{{ $data->id }}">
                            </div>
                            <div class="form-group mt-3 mb-3">
                                <label for="document">Select File</label>
                                <input type="file" class="form-control" name="document" id="document">
                                @error('document')
                                    <p class="alert-danger alert mt-3">{{ $message }}</p>
                                @enderror
                            </div>
                            <div>
                                <button type="submit" class="btn btn-primary">Add Document</button>
                            </div>
                        </form>
                    </td>
                </tr> --}}
            </table>
            <div class="row mt-5">
                <div class="col-6">
                    <h4>Document List</h4>
                </div>
                <div class="col-6"><button class="btn btn-primary " style="float: right;" data-bs-toggle="modal"
                        data-bs-target="#addDocumentsModal">Add Document</button></div>

            </div>
            <table class="table">

                <thead class="thead-dark">
                    <tr>
                        <th>sr.</th>
                        <th>Document Type</th>
                        <th>Document Name</th>
                        <th>Expiry Date</th>
                        <th>Information</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($document_files as $document)
                        <tr>
                            <td>{{ $loop->index + 1 }}</td>
                            <td>{{ $document->document_type }}</td>
                            <td>{{ $document->file_name }}</td>
                            <td>{{ $document->expiry_date }}</td>
                            <td>{{ $document->description }}</td>
                            <td>
                                <a href="{{ URL::to('documents/' . $document->file_name) }}" target="_blank"
                                    class="m-1 btn btn-success btn-sm">View</a>
                                <a href="{{ URL::to('download_document/' . $document->id) }}"
                                    class="m-1 btn btn-info btn-sm ">Download </a>
                                <a href="{{ URL::to('delete_document/' . $document->id) }}"
                                    class="m-1 btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!--Bootstrap modal-->
        <!-- Modal -->
        <div class="modal fade" id="addDocumentsModal" tabindex="-1" aria-labelledby="addDocumentsModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addDocumentsModalLabel">Add Staff's Document</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="{{ URL::to('add_documents') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" class="form-control" name="id_staff_list" value="{{ $data->id }}">
                            <div class="row">
                                <div class="col-12"><label>
                                        <h5>Select Document Type</h5>
                                    </label></div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="Proof of Address"
                                        class="form-check-input" id="prof_address">
                                    <label class="form-check-label" for="prof_address">Proof of Address</label>
                                </div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="SIA Front" class="form-check-input"
                                        id="sia_front">
                                    <label class="form-check-label" for="sia_front">SIA Front</label>
                                </div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="SIA Backside"
                                        class="form-check-input" id="sia_back">
                                    <label class="form-check-label" for="sia_back">SIA Backside</label>
                                </div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="Passport" class="form-check-input"
                                        id="passport">
                                    <label class="form-check-label" for="passport">Passport</label>
                                </div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="BRP Front" class="form-check-input"
                                        id="brp_front">
                                    <label class="form-check-label" for="brp_front">BRP Front</label>
                                </div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="BRP Backside"
                                        class="form-check-input" id="brp_back">
                                    <label class="form-check-label" for="brp_back">BRP Backside</label>
                                </div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="Right to Work"
                                        class="form-check-input" id="right_to_work">
                                    <label class="form-check-label" for="right_to_work">Right to Work</label>
                                </div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="Driving License"
                                        class="form-check-input" id="driving_license">
                                    <label class="form-check-label" for="driving_license">Driving License</label>
                                </div>
                                <div class="col-4 form-group form-check">
                                    <input type="checkbox" name="document_type" value="Proof of NI"
                                        class="form-check-input" id="proof_of_ni">
                                    <label class="form-check-label" for="proof_of_ni">Proof of NI</label>
                                </div>
                                @error('document_type')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                                <div class="col-12"></div>
                                <div class="col-12 form-group mt-3">
                                    <label for="document"> Upload Document</label>
                                    <input type="file" name="document" id="document" class="form-control">
                                    @error('document')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="col-12 form-group mt-3">
                                    <label for="date-picker">Document Expiry Date</label>
                                    <input type="text" name="expiry_date" id="date-picker" class="form-control">
                                    @error('expiry_date')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="col-12 form-group mt-3">
                                    <label for="information">Information</label>
                                    <textarea type="text" name="information" id="information" class="form-control" rows="5"
                                        style="resize: none"></textarea>
                                </div>
                                <div class="col-12 form-group mt-3">
                                    <button type="submit" class="btn btn-primary">Save Document</button>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
        </div>

    </div>

@section('script-content')
    <script>
        $(document).ready(function() {
            let default_value = $('input[name=exampleRadios]:checked').val();
            $('#document_value').val(default_value);
            $('input[type=radio]').change(function() {
                let value_of_radio = $('input[name=exampleRadios]:checked').val();
                $('#document_value').val(value_of_radio);
                $('#document_value').attr("placeholder", value_of_radio);
                console.log($('#document_value').val() + " value")

            })

        })
    </script>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script>
        $(function() {
            $("#date-picker").datepicker({
                dateFormat: 'dd/mm/yy', //check change
                changeMonth: true,
                changeYear: true
            });
        });
    </script>
@endsection
@endsection

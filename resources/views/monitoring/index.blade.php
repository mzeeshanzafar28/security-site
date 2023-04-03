@extends('layout')
@section('title', 'Steel Toe | Monitoring List')
@section('content')
    @php
        use App\Models\clients;
    @endphp
    <div class="card mb-4 mt-4">
        <div class="row card-header ">
            <div class="col-6">
                <i class="fas fa-table me-1"></i>
                Monitorings List
            </div>
            <div class="col-6 text-end">
                @if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
                    <a href="{{ url('monitoring/create') }}" class="btn btn-primary float-end m-1">Add New</a>
                @endif

                <button class="btn btn-info m-1" id="print-btn" style="display: none;" onclick="printShifts()">Print
                    Shifts</button>

            </div>



        </div>
        <div class="card-body">
            <div class="row" style="margin-bottom:10px">
                <!--<div class="col-9"></div>-->
                <div class="col-12 text-center">
                    <a class="" style="margin-top:5px; text-decoration:none;" onclick="showFilter()" id="showBtn"><span class="fa fa-arrow-down"></span> Show Filter</a>
                    <a class="" style="margin-top:5px; text-decoration:none; display: none;" onclick="hideFilter()" id="hideBtn"><span class="fa fa-arrow-up"></span> Hide Filter</a>
                </div>
            </div>

            <form action="{{URL::to('/monitoring/week/filter')}}" method="GET" id="filter" style="display: none;">
            <div class="row" style="margin-bottom: 10px;"  >
                    {{-- @csrf --}}
                    <div class="col-3">
                        <div class="row">
                            <!--<div class="col-12">-->
                            <!--    Week Commencing-->
                            <!--</div>-->
                            <div class="col-12">
                                <select name="selected_week" id="selected_week" class="form-control">
                                    <option value="" selected disabled>Select Week Commencing</option>
                                    @foreach ($weeks->unique('Week_Commencing') as $week)
                                        <option value="{{ $week->Week_Commencing }}"
                                            {{ isset($selected_week) && $selected_week == $week->Week_Commencing ? 'Selected' : '' }}>
                                            {{ $week->Week_Commencing }}</option>
                                    @endforeach
                                </select>
                            </div>
                            
                        </div>
                        
                    </div>
                    <div class="col-3">
                        <select name="selected_client" id="selected_client" class="form-control">
                            <option value="" selected disabled>Select Client</option>
                            @if(isset($clients))
                            @foreach ($clients as $client)
                                <option value="{{ $client->id }}"
                                    {{ isset($selected_client) && $selected_client == $client->id ? 'Selected' : '' }}>
                                    {{ $client->clientname }}</option>
                            @endforeach
                            @endif
                        </select>
                    </div>
                    <div class="col-3">
                        <select name="selected_site" id="selected_site" class="form-control">
                            <option value="" selected disabled>Select Site</option>
                            @if(isset($sites))
                            @foreach ($sites as $site)
                                <option value="{{ $site->id }}"
                                    {{ isset($selected_site) && $selected_site == $site->id ? 'Selected' : '' }}>
                                    {{ $site->sitename }}</option>
                            @endforeach
                            @endif
                        </select>
                    </div>
                    <div class="col-3">
                        <button class="btn btn-primary" type="submit">Apply Filter</button>
                        @if (isset($selected_week)||isset($selected_client)||isset($selected_site))
                            <a href="/monitoring" class="btn btn-info" type="button">Remove Filter</a>
                        @endif
                    </div>
                </div>
            </form>
            {{-- @php
			dd($start.'-'.$end);
		@endphp --}}
            <table id="datatablesSimple">
                <thead>
                    <tr>
                        <th style="cursor: default" data-sortable="false">
                            <input type="checkbox" name="" onchange="CheckAll()" id="check_all">
                        </th>
                        <th>Week Commencing</th>
                        <th>Site Name</th>
                        <th>Client Name</th>
                        <th>Site Hours Per Week</th>
                        <th>No. of Activities</th>
                        {{-- <th>Weekly Staff Roster</th> --}}
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>

                    @if ($data)
                        @foreach ($data as $d)
                            <tr>
                                <td>
                                    <input type="checkbox" name="monitoring_ids[]" class="checkBox"
                                        onclick="togglePrint(event, {{ $d->id }})" id="{{ $d->id }}">
                                </td>
                                <td>WC - {{ $d->Week_Commencing }}</td>
                                <td>{{ $d->site->sitename ?? '' }}</td>
                                @isset($d->site)
                                    @php
                                        $client = clients::find($d->site->clientname_id);
                                    @endphp
                                @endisset
                                <td>{{ isset($client) ? $client->clientname : '' }} </td>
                                <td>{{ $d->Total_hours }}</td>
                                <td>{{ $count_totalactivity[$d->id] }}</td>
                                {{-- <td class="text-center">
						
					</td> --}}
                                <td>
                                    <a href="{{ url('monitoring/' . $d->id) }}" class="btn btn-warning btn-sm">Show</a>
                                    @if (auth()->user()->parent_id == 0 || $tab_perm->can_update == 1)
                                        <a href="{{ url('monitoring/' . $d->id . '/edit') }}"
                                            class="btn btn-info btn-sm">Update</a>
                                    @endif

                                    @if (auth()->user()->parent_id == 0 || $tab_perm->can_delete == 1)
                                        <a onclick="return confirm('Are you sure to delete this data?')"
                                            href="{{ url('monitoring/' . $d->id . '/delete') }}"
                                            class="btn btn-danger btn-sm">Delete</a>
                                    @endif

                                </td>
                            </tr>
                        @endforeach
                    @endif
                </tbody>
            </table>
        </div>
    </div>

    <div class="container" id="toPrint"></div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous">
    </script>
    <script src="{{ asset('/js/script.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>



    <script>
        window.togglePrint = togglePrint;
        let shiftsToPrint = [];
        const shifts = {!! json_encode($data) !!}
        let lastChecked;

        function filterMonitoring() {
            var week = $('#selected_week').val();
            var client = $('#selected_client').val();
            var site = $('#selected_site').val();

            week = week.replaceAll('/', '-');

            window.location.href = `/monitoring/week/filter?selected_week=${week}`;

        }



        function togglePrint(event, id) {
            // console.log(lastChecked);
            if (event.shiftKey && lastChecked) {
                // console.log('it works')
                let start = shifts.findIndex(shift => shift.id === id);
                let end = shifts.findIndex(shift => shift.id === lastChecked);
                shiftsToPrint = shifts.slice(Math.min(start, end), Math.max(start, end) + 1)
                    .map(shift => shift.id);

                shiftsToPrint.forEach(id => {
                    document.getElementById(id).checked = true;
                });
            } else {
                // console.log('it didn t');
                if (shiftsToPrint.includes(id)) {
                    const i = shiftsToPrint.indexOf(id);
                    shiftsToPrint.splice(i, 1);

                } else {
                    shiftsToPrint.push(id);
                }

                if (shiftsToPrint.length > 0) {
                    $('#print-btn').show();
                } else {
                    $('#print-btn').hide();
                }

                lastChecked = id;
            }

            // console.log(shiftsToPrint);
        }

        function CheckAll() {
            var checkboxes = document.getElementsByClassName("checkBox");
            var check_all = document.getElementById("check_all");

            shiftsToPrint = [];
            if (check_all.checked) {
                for (const x in shifts) {
                    shiftsToPrint.push(shifts[x].id);
                }
                for (var i = 0; i < checkboxes.length; i++) {
                    checkboxes[i].checked = check_all.checked;
                }
            } else {
                for (var i = 0; i < checkboxes.length; i++) {
                    checkboxes[i].checked = check_all.checked;
                }
            }

            if (shiftsToPrint.length > 0) {
                $('#print-btn').show();
            } else {
                $('#print-btn').hide();
            }
        }

        function printShifts() {
            if (shiftsToPrint.length > 0) {
                const ids = JSON.stringify(shiftsToPrint);
                console.log(ids);
                $.ajax({
                    type: 'get',
                    url: "{{ URL::to('/get-monitorings-shifts') }}" + `/${ids}`,
                    success: function(response) {
                        const divToPrint = document.createElement("DIV");
                        divToPrint.classList.add('container');
                        divToPrint.setAttribute("style", "padding:50px")

                        for (let i = 0; i < response.length; i++) {

                            var title = document.createElement("DIV");
                            var siteName = document.createElement("H3")
                            siteName.innerHTML = "Site name: " + response[i].site.sitename;
                            title.appendChild(siteName);
                            var WC = document.createElement("H3");
                            WC.innerHTML = "Week Commencing: " + response[i].Week_Commencing
                            title.appendChild(WC);

                            //creating table
                            var table = document.createElement("Table");
                            // table.border = "1";
                            table.setAttribute("id", `shiftsTable-${response[i].id}`);
                            table.setAttribute("style", "text-align:center");
                            table.classList.add('table');
                            table.classList.add('m-5');


                            //adding thead
                            var tHead = table.createTHead();

                            //adding row in thead
                            var header = ["Day", "Guard Name", "Chargeable Time In", "Chargeable Time Out",
                                "Chargeable Total Hours", "Payable Time In", "Payable Time Out",
                                "Payable Total Hours"
                            ];
                            var hRow = tHead.insertRow(0);
                            for (let h = 0; h < header.length; h++) {
                                var headerCell = document.createElement("TH")
                                headerCell.innerHTML = header[h];
                                hRow.appendChild(headerCell);

                            }

                            var tbody = table.createTBody();
                            //adding rows in tbody
                            const shiftsList = response[i].monitoring_staff.reverse();
                            let total_hours = 0;
                            let guard_hours = 0;
                            for (let s = 0; s < shiftsList.length; s++) {
                                row = tbody.insertRow(0);
                                var cell = row.insertCell(-1);
                                if (shiftsList[s].shift_day == 1) {
                                    cell.innerHTML = "Monday";
                                } else if (shiftsList[s].shift_day == 2) {
                                    cell.innerHTML = "Tuesday"
                                } else if (shiftsList[s].shift_day == 3) {
                                    cell.innerHTML = "Wednesday"
                                } else if (shiftsList[s].shift_day == 4) {
                                    cell.innerHTML = "Thursday"
                                } else if (shiftsList[s].shift_day == 5) {
                                    cell.innerHTML = "Friday"
                                } else if (shiftsList[s].shift_day == 6) {
                                    cell.innerHTML = "staurday"
                                } else {
                                    cell.innerHTML = "Sunday"
                                }

                                var cell1 = row.insertCell(-1);
                                if (shiftsList[s].staff != null) {
                                    cell1.innerHTML = shiftsList[s].staff.staff_name
                                } else {
                                    cell1.innerHTML = '';
                                }

                                var cell2 = row.insertCell(-1);
                                cell2.innerHTML = shiftsList[s].time_in;

                                var cell3 = row.insertCell(-1);
                                cell3.innerHTML = shiftsList[s].time_out;

                                var cell4 = row.insertCell(-1);
                                cell4.innerHTML = shiftsList[s].total_hours;

                                var cell5 = row.insertCell(-1);
                                cell5.innerHTML = shiftsList[s].guard_time_in;

                                var cell6 = row.insertCell(-1);
                                cell6.innerHTML = shiftsList[s].guard_time_out;

                                var cell7 = row.insertCell(-1);
                                cell7.innerHTML = shiftsList[s].guard_hours;

                                total_hours += parseFloat(shiftsList[s].total_hours);
                                guard_hours += parseFloat(shiftsList[s].guard_hours);
                            }

                            row2 = tbody.insertRow(-1);
                            var cell = row2.insertCell(-1);
                            cell.innerHTML = "Total Hours"

                            var cell1 = row2.insertCell(-1);
                            cell1.innerHTML = " "
                            var cell2 = row2.insertCell(-1);
                            cell2.innerHTML = " "
                            var cell3 = row2.insertCell(-1);
                            cell3.innerHTML = " "
                            var cell4 = row2.insertCell(-1);
                            cell4.innerHTML = "Total Chargeable: " + (total_hours).toFixed(2);
                            var cell5 = row2.insertCell(-1);
                            cell5.innerHTML = " "
                            var cell6 = row2.insertCell(-1);
                            cell6.innerHTML = " "
                            var cell7 = row2.insertCell(-1);
                            cell7.innerHTML = "Total Payable: " + (guard_hours).toFixed(2);


                            // var div = document.getElementById('toPrint');
                            divToPrint.appendChild(title);
                            divToPrint.appendChild(table);
                        }

                        var printWindow = window.open('', '', 'height=1000,width=800');
                        printWindow.document.write('<html><head><title>Monitoring Shifts</title>');
                        printWindow.document.write('<style type = "text/css">');
                        printWindow.document.write('table, th, td {   border: 1px solid; }');
                        printWindow.document.write('</style>');
                        printWindow.document.write('</head>');

                        printWindow.document.write('<body>');

                        printWindow.document.write(divToPrint.innerHTML);
                        printWindow.document.write('</body>');

                        printWindow.document.write('</html>');
                        // printWindow.open(pdfUrl);
                        printWindow.open(pdfUrl);
                        printWindow.document.close();
                        // 		shiftsToPrint = [];
                        // 		$('.checkBox').removeAttr('checked');

                    }
                })
            } else {
                $('#print-btn').hide();
            }
        }

        function showFilter(){
            document.getElementById("showBtn").style.display = "none";
            document.getElementById("hideBtn").style.display = "inline-block";
            document.getElementById("filter").style.display = "block";

        }
        
        function hideFilter(){
            document.getElementById("showBtn").style.display = "inline-block";
            document.getElementById("hideBtn").style.display = "none";
            document.getElementById("filter").style.display = "none";

        }
    </script>

@endsection

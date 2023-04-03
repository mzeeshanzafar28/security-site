@extends('layout')
@section('content')
<div class="card mb-4 mt-4">
    <div class="card-header">
        <div class="row">
            <div class="col-3" style="margin-top:5px">
                <i class="fas fa-table me-1"></i>
                Dashboard
            </div>
            <div class="col-9">
                <div class="row">
                    <div class="col-4 text-end" style="margin-top:5px">
                        Select Filter:
                    </div>
                    <div class="col-6">
                        <select name="filter" id="filter" class="form-control" onchange="applyFilter()">
                            <option disabled>Apply Filter</option>
                            <option value="weekly" {{isset($filter) && $filter == 'weekly' ? 'Selected' : ''}}>Current Week</option>
                            <option value="monthly" {{isset($filter) && $filter == 'monthly' ? 'Selected' : ''}}>Current Month</option>
                            <option value="quarterly" {{isset($filter) && $filter == 'quarterly' ? 'Selected' : ''}}>Current Quarter</option>
                            <option value="yearly" {{isset($filter) && $filter == 'yearly' ? 'Selected' : ''}}>Current Year</option>
                        </select>
                    </div>
                    <div class="col-2">
                        <a href="/check-sia" class="btn btn-info">Check SIA</a>
                    </div>
                </div>
            </div>
        </div>
	</div>
    <div class="card-body">
        <div class="row">
            <div class="col-12">
                <table class="table" id="datatablesSimple">
                    <thead>
                        <tr>
                            {{-- <th>Site Name</th> --}}
                            <th>Client Name</th>
                            <th>Total Shift Hours</th>
                            <th>Total Misconduct</th>
                            <th>Total Complaints</th>
                            
                        </tr>
                        

                    </thead>
                    <tbody>
                        @foreach ($clients as $client)
                        @if ($clientShiftsHours[$client->id] > 0)
                            <tr>
                                <td>{{$client->clientname}}</td>
                                {{-- <td>{{$client->client->clientname}}</td> --}}
                                <td>{{$clientShiftsHours[$client->id]}}</td>
                                <td>{{$clientMisconduct[$client->id]}}</td>
                                <td>{{$clientComplaints[$client->id]}}</td>
                            </tr>                            
                        @endif
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>

        <div class="row" style="margin-top:10px;">
            <div class="col-4">
                <div >
                    <div id="piechart"></div>

                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

                    <script type="text/javascript">
                        
                        // Load google charts
                        google.charts.load('current', {
                            'packages': ['corechart']
                        });
                        google.charts.setOnLoadCallback(drawChart);

                        
                    
                        function drawChart() {

                            var data = new google.visualization.arrayToDataTable(<?php echo $hoursChartData; ?>);
                            
                            // var data = new google.visualization.DataTable();
                            // data.addColumn('string', 'Element');
                            // data.addColumn('number', 'Percentage');
                            // data.addRows([
                            //     <?php echo $hoursChartData; ?>

                            // ]);
                            

                            

                            // Optional; add a title and set the width and height of the chart
                            var options = {
                                'title': 'Client Hours',
                                'width': 350,
                                'height': 400,
                                'chartArea': {
                                    'width': '100%',
                                    'height': '80%'
                                },
                                'legend': {
                                    'position': 'bottom'
                                }
                            };


                            // Display the chart inside the <div> element with id="piechart"
                            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                            chart.draw(data, options);
                        }
                    </script>
                </div>
            </div>
            <div class="col-4">
                <div >
                    <div id="piechart-1"></div>

                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

                    <script type="text/javascript">
                        
                        // Load google charts
                        google.charts.load('current', {
                            'packages': ['corechart']
                        });
                        google.charts.setOnLoadCallback(drawChart);

                        
                    
                        function drawChart() {

                            var data = new google.visualization.arrayToDataTable( <?php echo $misconductChartData; ?>);
                           
                            // var data = new google.visualization.DataTable();
                            // data.addColumn('string', 'Element');
                            // data.addColumn('number', 'Percentage');
                            // data.addRows([
                                // <?php echo $misconductChartData; ?>

                            // ]);
                            

                            

                            // Optional; add a title and set the width and height of the chart
                            var options = {
                                'title': 'Misconducts',
                                'width': 350,
                                'height': 400,
                                'chartArea': {
                                    'width': '100%',
                                    'height': '80%'
                                },
                                'legend': {
                                    'position': 'bottom'
                                }
                            };


                            // Display the chart inside the <div> element with id="piechart"
                            var chart = new google.visualization.PieChart(document.getElementById('piechart-1'));
                            chart.draw(data, options);
                        }
                    </script>
                </div>
            </div>
            <div class="col-4">
                <div >
                    <div id="piechart-2"></div>

                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

                    <script type="text/javascript">
                        
                        // Load google charts
                        google.charts.load('current', {
                            'packages': ['corechart']
                        });
                        google.charts.setOnLoadCallback(drawChart);

                        
                    
                        function drawChart() {

                            var data = new google.visualization.arrayToDataTable(<?php echo $complaintChartData; ?>);
                            // var data = new google.visualization.DataTable();
                            // data.addColumn('string', 'Element');
                            // data.addColumn('number', 'Percentage');
                            // data.addRows([
                            //     <?php echo $complaintChartData; ?>

                            // ]);
                            

                            

                            // Optional; add a title and set the width and height of the chart
                            var options = {
                                'title': 'Complaints',
                                'width': 350,
                                'height': 400,
                                'chartArea': {
                                    'width': '100%',
                                    'height': '80%'
                                },
                                'legend': {
                                    'position': 'bottom'
                                }
                            };


                            // Display the chart inside the <div> element with id="piechart"
                            var chart = new google.visualization.PieChart(document.getElementById('piechart-2'));
                            chart.draw(data, options);
                        }
                    </script>


                </div>
            </div>
            
        </div>

        <div class="row" style="margin-top:10px;">
            <div class="col-12">
                @if ($vals) 
                    <div id="series_chart_div" style="width:1100px; height: 700px"></div>
                    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                    <script type="text/javascript">
                        google.charts.load('current', {'packages':['corechart']});
                        google.charts.setOnLoadCallback(drawSeriesChart);
    
                        function drawSeriesChart() {
    
                        var data = new google.visualization.arrayToDataTable(
                            <?php echo $visitsChartData ?>
                        );
    
                        var options = {
                            title: 'Supervisory Visits',
                            hAxis: {title: 'Number of Visits', viewWindow:{min:0}, format:'#'},
                            vAxis: {title: 'Visits Average rating', format:'#',   ticks: [0, 1,2,3,4,5]},
                            bubble: {textStyle: {fontSize: 11}}
                        };
    
                        var chart = new google.visualization.BubbleChart(document.getElementById('series_chart_div'));
                        chart.draw(data, options);
                        }
                    </script>
                @else
                <div class="text-center" style="margin-top: 50px">
                    <span class="text-center">No Data for Supervisory Visit Avaliable</span>    
                </div>
                    

                @endif

                
            </div>
        </div>
        
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="{{ asset('/js/script.js') }}"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="{{ asset('/js/datatables-simple-demo.js') }}"></script>

<script>
    function applyFilter() {
        const filter = $('#filter').val();

        window.location =`/?filter=${filter}`;
    }
</script>


@endsection
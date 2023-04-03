<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>@yield('title')</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="{{ asset('/css/styles.css') }}" rel="stylesheet" />
        <script src="https://js.stripe.com/v3/"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
        

        

        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="/">Steel Toe</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        {{-- <li><a class="dropdown-item" href="#">Settings</a></li> --}}
                        <li><a class="dropdown-item" href="/activity-log">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="{{url('/logout')}}" Session::flush();>Logout</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        @php
            use App\Models\Permission;
            use App\Models\Tab;
            $permissions = Permission::with('tab')->where('role_id', Auth::user()->user_role)->get();
            $tabs = Tab::all();
        @endphp
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            @if (auth()->user()->parent_id != 0)
                                @foreach ($permissions as $perm)
                                    @if ($perm->tab->is_parent == 0 && $perm->tab->is_child == 0 )
                                        <a class="nav-link" href="{{url($perm->tab->tab_link)}}">
                                            <div class="sb-nav-link-icon"><i class="{{$perm->tab->tab_icon}}"></i></div>
                                            {{$perm->tab->tab_name}}
                                        </a>
                                    @endif

                                    @if ($perm->tab->is_parent == 1)
                                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="{{$perm->tab->tab_link}}" aria-expanded="false" aria-controls="collapseLayouts">
                                            <div class="sb-nav-link-icon"><i class="{{$perm->tab->tab_icon}}"></i></div>
                                            {{$perm->tab->tab_name}}
                                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                        </a>
                                        <div class="collapse" id="{{substr($perm->tab->tab_link, 1)}}" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                            <nav class="sb-sidenav-menu-nested nav">
                                                                                                    
                                                @foreach ($permissions as $child)
                                                    @if ($child->tab->is_child == 1 && $child->tab->parent_id == $perm->tab->id)
                                                        <a class="nav-link" href="{{url($child->tab->tab_link)}}">{{$child->tab->tab_name}}</a>                                                    
                                                    @endif
                                                @endforeach
                                            </nav>
                                        </div>
                                    @endif
                                @endforeach
                            @endif

                            @if (auth()->user()->parent_id == 0)
                                @foreach ($tabs as $tab)
                                    @if ($tab->is_parent == 0 && $tab->is_child == 0 )
                                        <a class="nav-link" href="{{url($tab->tab_link)}}">
                                            <div class="sb-nav-link-icon"><i class="{{$tab->tab_icon}}"></i></div>
                                            {{$tab->tab_name}}
                                        </a>
                                    @endif

                                    @if ($tab->is_parent == 1)
                                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="{{$tab->tab_link}}" aria-expanded="false" aria-controls="collapseLayouts">
                                            <div class="sb-nav-link-icon"><i class="{{$tab->tab_icon}}"></i></div>
                                            {{$tab->tab_name}}
                                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                        </a>
                                        <div class="collapse" id="{{substr($tab->tab_link, 1)}}" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                            <nav class="sb-sidenav-menu-nested nav">
                                                                                                    
                                                @foreach ($tabs as $child)
                                                    @if ($child->is_child == 1 && $child->parent_id == $tab->id)
                                                        <a class="nav-link" href="{{url($child->tab_link)}}">{{$child->tab_name}}</a>                                                    
                                                    @endif
                                                @endforeach
                                            </nav>
                                        </div>
                                    @endif
                                @endforeach
                            @endif
                            
                            {{-- <div class="sb-sidenav-menu-heading">Interface</div> --}}
                            <!-- Clients -->
                            {{-- <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#clients" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Clients
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="clients" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{url('clients')}}">View All</a>
                                    <a class="nav-link" href="{{url('clients/create')}}">Add new</a>
                                </nav>
                            </div>
                            <!-- End clients -->
                            <!-- Sites -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#sites" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-map-marked-alt"></i></div>
                                Sites
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="sites" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{url('sites')}}">View All</a>
                                    <a class="nav-link" href="{{url('sites/create')}}">Add New</a>
                                </nav>
                            </div>
                            <!-- End Sites -->
                            <!-- Staff -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#staff" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-users"></i></div>
                                Staff
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="staff" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{url('staff/stafflist')}}">Staff List</a>
                                    <a class="nav-link" href="{{url('staff/subcontractors')}}">Sub-contractors</a>
                                </nav>
                            </div>
                            <!-- End Staff -->
                            <!-- Monitoring -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#monitoring" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-pie"></i></div>
                                Monitoring
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="monitoring" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{url('monitoring')}}">View All</a>
                                    <a class="nav-link" href="{{url('monitoring/create')}}">Add New</a>
                                </nav>
                            </div>
                            <!-- End Monitoring -->
                            <!-- Meeting -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#meetings" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fa-regular fa-handshake"></i></div>
                                Meetings
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="meetings" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{url('meetings/internalmeetings')}}">Internal Meetings</a>
                                    <a class="nav-link" href="{{url('meetings/externalmeetings')}}">External Meetings</a>
                                </nav>
                            </div>
                            <!-- End Meeting -->
                            <!-- Supervisor visits -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#supervisoryvisits" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fa fa-dashboard"></i></div>
                                Supervisory Visits
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="supervisoryvisits" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{url('supervisoryvisits')}}">View All</a>
                                    <a class="nav-link" href="{{url('supervisoryvisits/create')}}">Add New</a>
                                </nav>
                            </div>
                            <!-- End Supervisor visits -->
                            <!-- Activities -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#activities" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-fingerprint"></i></div>
                                Activities
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="activities" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{url('activities')}}">View All</a>
                                    <a class="nav-link" href="{{url('activities/create')}}">Add New</a>
                                </nav>
                            </div>
                            <!-- End Activities -->
                            <!-- Banned -->
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#banned" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-bullseye"></i></div>
                                Banned Staff
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="banned" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="{{url('banned')}}">View All</a>
                                    <a class="nav-link" href="{{url('banned/create')}}">Add New</a>
                                </nav>
                            </div> --}}
                            <!-- End Banned -->
                            <a class="nav-link" href="/logout">
                                <div class="sb-nav-link-icon"><i class="fas fa-sign-out-alt"></i></div>
                                Logout 
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        {{auth()->user()->company_name ?? auth()->user()->name }}
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        @yield('content')
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright © Steeltoe - Presented by <a href="//www.jroxa.com">Jroxa Technologies LTD</a></div>
                            <div>
                                <a href="//www.jroxa.com">Privacy Policy</a>
                                <a href="//www.jroxa.com">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        @yield('script-content')
        <script>
            // var stripe = "<?php echo env('MIX_STRIPE_KEY'); ?>";
            // var elements = stripe.elements();
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="{{asset('public')}}/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="{{asset('public')}}/assets/demo/chart-area-demo.js"></script>
        <script src="{{asset('public')}}/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="{{asset('public')}}/js/datatables-simple-demo.js"></script>
    </body>
</html>
@stack('styles')
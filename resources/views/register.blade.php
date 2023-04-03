<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Register - Steel Toe</title>
        <link href="{{asset('')}}css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Register Now </h3></div>
                                    <center><img src="logo.png" height="100" width="300"></center>
                                    <div class="card-body">
                                        @if(Session::has('msg'))
                                            <p class="text-danger">{{session('msg')}}</p>
                                        @endif
                                        <form method="post" action="{{URL::to('/user/register')}}">
                                            @csrf
                                            <div class="form-floating mb-3">
                                                <input name="name" class="form-control" id="name" type="text" placeholder="name" />
                                                <label for="inputEmail">Name</label>
                                                @if ($errors->has('name'))
                                                    <span class="text-danger">{{ $errors->first('name') }}</span>
                                                @endif
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="company_name" class="form-control" id="company_name" type="text" placeholder="Company name" />
                                                <label for="inputEmail">Company Name</label>
                                                @if ($errors->has('company_name'))
                                                    <span class="text-danger">{{ $errors->first('company_name') }}</span>
                                                @endif
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="email" class="form-control" id="inputEmail" type="email" placeholder="name@example.com" />
                                                <label for="inputEmail">Email address</label>
                                                @if ($errors->has('email'))
                                                    <span class="text-danger">{{ $errors->first('email') }}</span>
                                                @endif
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="password" class="form-control" id="inputPassword" type="password" placeholder="Password" />
                                                <label for="inputPassword">Password</label>
                                                @if ($errors->has('password'))
                                                    <span class="text-danger">{{ $errors->first('password') }}</span>
                                                @endif
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input name="password_confirmation" class="form-control" id="inputPassword1" type="password" placeholder="Confirm Password" />
                                                <label for="inputPassword1">Confirm Password</label>
                                                @if ($errors->has('password'))
                                                    <span class="text-danger">{{ $errors->first('password') }}</span>
                                                @endif
                                            </div>
                                            <div class="d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <input type="submit" class="btn btn-primary" value="Register" />
                                            </div>
                                        </form>
                                        <span>Already Have account? <a href="/login">Login Now</a></span>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright ¬© Steeltoe - Presented by <a href="//www.jroxa.com">Jroxa Technologies LTD</a></div>
                            <div>
                                <a href="//www.jroxa.com">Privacy Policy</a>
                                ¬∑
                                <a href="//www.jroxa.com">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="{{asset('')}}/js/scripts.js"></script>
    </body>
</html>

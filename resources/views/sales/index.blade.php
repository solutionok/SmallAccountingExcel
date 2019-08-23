<!doctype html>
<html class="fixed">
    <head>

        <!-- Basic -->
        <meta charset="UTF-8">
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <!-- Web Fonts  -->
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

        <!-- Vendor CSS -->
        <link rel="stylesheet" href="{{url('/public')}}/assets/vendor/bootstrap/css/bootstrap.css" />

        <link rel="stylesheet" href="{{url('/public')}}/assets/vendor/font-awesome/css/font-awesome.css" />

        <!-- Theme CSS -->
        <link rel="stylesheet" href="{{url('/public')}}/assets/stylesheets/theme.css" />

        <!-- Skin CSS -->
        <link rel="stylesheet" href="{{url('/public')}}/assets/stylesheets/skins/default.css" />

        <!-- Theme Custom CSS -->
        <link rel="stylesheet" href="{{url('/public')}}/assets/stylesheets/theme-custom.css">

        <!-- Head Libs -->
        <script src="{{url('/public')}}/assets/vendor/modernizr/modernizr.js"></script>
    </head>
    <body>
        <!-- start: page -->
        <section class="body-sign">
            
            <div class="center-sign">
                <a href="/" class="logo pull-left">
                    <img src="{{url('/public')}}/assets/images/logo_sales.png" height="54"/>
                </a>

                <div class="panel panel-sign">
                    <div class="panel-title-sign mt-xl text-right">
                        <h2 class="title text-uppercase text-weight-bold m-none"><i class="fa fa-user mr-xs"></i> Sign In</h2>
                    </div>
                    <div class="panel-body">
                        <form action="{{url('sales/do-login')}}" method="post">
                            @csrf
                            @if (session('error'))
                            <div class="alert alert-danger">
                                {{session('error')}}
                            </div>
                            @endif
                            <div class="form-group mb-lg">
                                <label>Username</label>
                                <div class="input-group input-group-icon">
                                    <input name="username" type="text" class="form-control input-lg" value="{{session('lastLoginUserName')}}" required/>
                                    <span class="input-group-addon">
                                        <span class="icon icon-lg">
                                            <i class="fa fa-user"></i>
                                        </span>
                                    </span>
                                </div>
                            </div>

                            <div class="form-group mb-lg">
                                <div class="clearfix">
                                    <label class="pull-left">Password</label>
                                </div>
                                <div class="input-group input-group-icon">
                                    <input name="pwd" type="password" class="form-control input-lg" value="{{session('lastLoginPassword')}}" required/>
                                    <span class="input-group-addon">
                                        <span class="icon icon-lg">
                                            <i class="fa fa-lock"></i>
                                        </span>
                                    </span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary hidden-xs">Sign In</button>
                                    <button type="submit" class="btn btn-primary btn-block btn-lg visible-xs mt-lg">Sign In</button>
                                </div>
                            </div>


                        </form>
                    </div>
                </div>

                <p class="text-center text-muted mt-md mb-md">&copy; Copyright {{date('Y')}}. All Rights Reserved.</p>
            </div>
        </section>
        <!-- end: page -->

        <!-- Vendor -->
        <script src="{{url('/public')}}/assets/vendor/jquery/jquery.js"></script>
        <script src="{{url('/public')}}/assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
        <script src="{{url('/public')}}/assets/vendor/bootstrap/js/bootstrap.js"></script>
        <script src="{{url('/public')}}/assets/vendor/nanoscroller/nanoscroller.js"></script>
        <script src="{{url('/public')}}/assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>

        <!-- Theme Base, Components and Settings -->
        <script src="{{url('/public')}}/assets/javascripts/theme.js"></script>

        <!-- Theme Custom -->
        <script src="{{url('/public')}}/assets/javascripts/theme.custom.js"></script>

        <!-- Theme Initialization Files -->
        <script src="{{url('/public')}}/assets/javascripts/theme.init.js"></script>

    </body>
</html>
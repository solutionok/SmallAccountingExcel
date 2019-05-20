<!doctype html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <title>{{env('APP_NAME')}}</title>

        @include('manager.layouts.css')
        
        <script>
            var BASE_URL = '{{url("")}}';
        </script>
    </head>
    <body>

        <section class="body">

            @include('manager.layouts.headbar')

            <div class="inner-wrapper">
                
                @include('manager.layouts.sidebar')
                
                <section role="main" class="content-body">
                    <header class="page-header">
                        <h2>{{ucfirst(isset($pageName)?$pageName:' ')}}</h2>
                    </header>
                    
                    @yield('content')
                </section>
            </div>
            
            @include('manager.layouts.footer')
        </section>
        
        @include('manager.layouts.scripts')
    </body>
</html>
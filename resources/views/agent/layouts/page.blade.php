<!doctype html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

        <title>{{env('APP_NAME')}}</title>

        @include('agent.layouts.css')
        
        <script>
            var BASE_URL = '{{url("")}}';
        </script>
    </head>
    <body>

        <section class="body">

            @include('agent.layouts.headbar')

            <div class="inner-wrapper">
                
                @include('agent.layouts.sidebar')
                
                <section role="main" class="content-body">
                    <header class="page-header">
                        <h2>{{ucfirst(isset($pageName)?$pageName:' ')}}</h2>
                    </header>
                    
                    @yield('content')
                </section>
            </div>
            
            @include('agent.layouts.footer')
        </section>
        
        @include('agent.layouts.scripts')
    </body>
</html>
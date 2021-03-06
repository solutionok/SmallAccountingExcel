<!-- Vendor -->
<script src="{{url('public')}}/assets/vendor/jquery/jquery.js"></script>
<script src="{{url('public')}}/assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
<script src="{{url('public')}}/assets/vendor/bootstrap/js/bootstrap.js"></script>
<script src="{{url('public')}}/assets/vendor/nanoscroller/nanoscroller.js"></script>

@yield('scripts')

<script src="{{url('public')}}/assets/javascripts/theme.js"></script>

<!-- Theme Custom -->
<script src="{{url('public')}}/assets/javascripts/theme.custom.js"></script>

<!-- Theme Initialization Files -->
<script src="{{url('public')}}/assets/javascripts/theme.init.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="{{url('public')}}/assets/vendor/pnotify/pnotify.custom.js"></script>
<script type="text/javascript">
    @if (Session::has('success'))
   
        new PNotify({
            title: 'Sussessed!',
            text: '{{Session::get('success')}}',
            type: 'primary',
        });
    @endif
    $('div[title],h3[title],button[title],a[title],label[title],input[title],span[title]').tooltip();
    
    function validateEmail(email) {
        var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(String(email).toLowerCase());
    }
    function validatePhone(phone) {
        if(phone[0]=='0' || phone.length!=10)return false;
        var re = /^[+]*[(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]*$/g;
        return re.test(String(phone).toLowerCase());
    }
    
</script>
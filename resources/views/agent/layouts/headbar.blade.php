 <header class="header">
    <div class="logo-container">
        <a href="agent" class="logo mt-xs">
            <img src="{{url('public')}}/assets/images/logo_agent.png?190104" height="45" />
        </a>
        <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
            <i class="fa fa-bars"></i>
        </div>
    </div>

    <!-- start: search & user box -->
    <div class="header-right">

        <div class="userbox" style="margin-top:15px;">
            <a href="#" data-toggle="dropdown">
                <figure class="profile-picture">
                    <i class="fa fa-user fa-2x"></i>
                </figure>
                <div class="profile-info" >
                    <span class="name">{{session('agent.AgentSelection')}}</span>
                    <span class="role">agent</span>
                </div>

                <i class="fa custom-caret"></i>
            </a>
            
            <div class="dropdown-menu">
                <ul class="list-unstyled">
                    <li class="divider"></li>
<!--                    <li>
                        <a role="menuitem" tabindex="-1" href="javascript:;"><i class="fa fa-user"></i> {{session('agent.NameManager')}}</a>
                    </li>-->
                    <li>
                        <a role="menuitem" tabindex="-1" href="{{url('/agent/logout')}}"><i class="fa fa-power-off"></i> Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- end: search & user box -->
</header>
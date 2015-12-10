<!-- Hide the box shadow on the landing page -->
<% if URLSegment = 'home' %>
     <nav id="mainNav" class="navbar navbar-default navbar-fixed-top landing-nav">
<% else %>
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
<% end_if %>
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="$AbsoluteBaseUrl">
                <img src="$ThemeDir/img/logo.png" alt="MSupply" id="nav-img">
            </a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <% loop $Menu(1) %>
                    <% if $Pos < 5 %>
                        <li>
                            <a class="$LinkingMode" href="$Link">$MenuTitle</a>
                        </li>
                     <% end_if %>
                <% end_loop %>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <!-- Get nav links -->
                <% loop $Menu(1) %>
                    <% if $Pos = 5 %>
                        <li>
                            <a class="$LinkingMode" href="$Link" id="support-btn">$MenuTitle</a>
                        </li>
                     <% end_if %>
                <% end_loop %>

                <!-- The More Dropdown Button. Visible For Wide Displays -->
                <li class="dropdown" style="margin-left: 10px">
                    <a class="dropdown-toggle desktop-only" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">More 
                        <i class="fa fa-caret-down" style="position: absolute; bottom: 15px; right: 8px; "></i>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="blog">Blog</a></li>
                        <li><a href="downloads">Downloads</a></li>
                        <li><a href="version-history">Version History </a></li>
                    </ul>
                </li>

                <!-- Individual list items. Visible For Narrow Diaplys -->
                <li class="mobile-only"><a href="blog">Blog</a></li>
                <li class="mobile-only"><a href="downloads">Downloads</a></li>
                <li class="mobile-only"><a href="version-history">Version History</a></li>
            </ul>
        </div>
    </div>
</nav>

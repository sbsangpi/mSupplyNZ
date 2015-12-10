<!-- Newsletter Banner -->
<aside id="newsletter-banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-lg-offset-1">
                <p><i class="fa fa-envelope-o"></i> Sign Up For Our Newsletter </p>
                <!-- Newslettter Form -->
                $NewsletterForm
            </div>
            <a href="https://twitter.com/msupply" target="_blank" class="col-lg-3" style="margin-top: 4px"> 
                <p style="display: inline;"><i class="fa fa-twitter"> </i>Follow Us On Twitter</p>
            </a>
        </div>
    </div>
</aside>

<!-- Footer Section-->
<footer>
    <div class="container">
        <div class="row">

            <!-- mSupply Logo For Desktop View -->
            <div class="col-sm-5 col-md-3 desktop-only">
                <img src="$ThemeDir/img/logo-white.png" alt="MSupply" id="nav-img">
                <p>Simple Powerful<br>Pharmaceutical Management</p>
            </div>

            <!-- Documentation Links -->
            <div class="col-sm-5 col-md-3 ">
                <h4><i class="fa fa-file"></i>Documentation</h4>
                <ul>
                    <li>
                        <a href="http://docs.msupply.org.nz/" target="_blank">
                            <i class="fa fa-caret-right"></i>
                            Documentation Wiki
                        </a>
                    </li>
                    <li>
                        <a href="downloads" target="_blank">
                            <i class="fa fa-caret-right"></i>
                            User Guide
                        </a>
                    </li>
                    <li>
                        <a href="version-history">
                            <i class="fa fa-caret-right"></i>
                            Version History
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Downloads Links -->
            <div class="col-sm-5 col-md-3 ">
                <h4><i class="fa fa-cloud-download"></i>Downloads</h4>
                <ul>
                    <li>
                        <a href="downloads">
                            <i class="fa fa-caret-right"></i>
                            Latest Windows Version
                        </a>
                    </li>
                    <li>
                        <a href="downloads">
                            <i class="fa fa-caret-right"></i>
                            Latest Mac Version
                        </a>
                    </li>
                    <li>
                        <a href="downloads">
                            <i class="fa fa-caret-right"></i>
                            Other Downloads
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Latest News Links -->
            <div class="col-sm-5 col-md-3 ">
                <h4><i class="fa fa-comment"></i>Latest News</h4>
                <ul>
                    <% loop LatestNews(3) %>
                        <li>
                            <a href="$Title">
                                <i class="fa fa-caret-right"></i>
                                $Title.LimitCharacters(22)
                            </a>
                        </li>
                    <% end_loop %>
                </ul>
            </div>
            
            
        </div>
        <!-- End Of Row -->

        <div class="row">
            <!-- mSupply Logo Fo Mobile View -->
            <div class="col-sm-3 mobile-only">
                <img src="$ThemeDir/img/logo-white.png" alt="MSupply" id="nav-img">
                <p>Simple Powerful<br>Pharmaceutical Management</p>
            </div>
            <br>
        </div>

        <!-- Bottom Footnote -->
        <div class="footnote row">
            <div class="col-xs-12">
                <p>© 2015 mSupply Limited. A Sussol Company.</p>
            </div> 
        </div>
    </div>
</footer>

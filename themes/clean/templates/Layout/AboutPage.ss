
<h2 class="page-heading text-center">$Subheading</h2>

<!-- About Us Summary -->
<main>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img class="img-responsive" src="$ThemeDir/img/Eddie.jpg">
            </div>
            <div class="col-md-6">
                $Content
            </div>
        </div>
    </div>
</main>

<!-- Team Profiles Section -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Our Team</h2>
                <br>
            </div>

            <!-- Profiles -->
            <% loop Profiles %>
                <div class="col-sm-4 text-center">
                    <div class="thumbnail">
                        <img class="img-responsive" src="$Photo.URL">
                        <div class="caption">
                            <h3>$Name<br>
                                <small>$Job</small>
                            </h3>
                            <p>$Description</p>
                        </div>
                    </div>
                </div>
            <% end_loop %>
            
        </div>  
    </div>
</section>

<% include GetInTouch %>


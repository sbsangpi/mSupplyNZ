<!-- Homepage Landing Section -->
<header>
    <div class="container">
        <div class="row">
            <div class="col-lg-7">
                <img class="landing-img" src="$ThemeDir/img/home-graphic.jpg">
            </div>
            <div class="col-lg-5 header-content">
                <h2 class="page-heading">$Intro</h2>
                <p class="text-muted">$CTA</p>
                <a href="#about" class="btn btn-primary btn-xl page-scroll">Contact Us Now!</a>
            </div>
        </div>
    </div>
</header>

<!-- Company Intro -->
<aside class="intro bg-primary">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
               $Content
               <br>
                <a href="downloads" class="btn btn-default btn-xl">Download MSupply</a>
            </div>
        </div>
    </div>
</aside>

<!-- Features Summary Section -->
<main>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Pharmaceutical management made easy</h2>
            </div>
        </div>
        <!-- Include Features -->
        <% include FeatureTabs %>
    </div>
</main>

<!-- Locations Section -->
<section>
    <!-- <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">We're working around the globe</h2><br>
                <p class="text-muted">We're from New Zealand, but now do most of our business in West Asia and the Pacific. Between our great customers and fantastic partners, we've got the whole world covered.</p>
            </div>
        </div>
        <div class="wolrd-map row desktop-only">
            <div class="world-map col-sm-12"></div>
        </div>
    </div> -->

    <!-- Customer Story Section-->
    <!-- <br>
    <br> -->
    <div class="container-fluid story-holder">
        <div class="row">
            <div class="col-sm-6 img-holder">
                <div style="background-image: url('$ThemeDir/img/Nigeria.jpg')" class="col-xs-12"></div>
            </div>
            <div class="col-sm-6 text-holder">
                <h2>$StoryTitle</h2>
                <h4>$StorySubheading</h4>
                <p>$StoryContent</p><br>
                <a href="customers" class="square-btn">Read more stories</a>
            </div>
        </div>
    </div>
</section>

<%include GetInTouch %>



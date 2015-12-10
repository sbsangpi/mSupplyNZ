<main>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-heading">$Title
                    <small>by <a href="#">$Author</a>
                    </small>
                </h2>
                <br>
                <ol class="breadcrumb">
                    <li><a href="$Parent.Link">$Parent.Title</a>
                    </li>
                    <li class="active">$Title</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-8">
                <% if $Date %>
                    <hr>
                    <p><i class="fa fa-clock-o"></i> Posted on $Date.Long()</p>
                    <hr>
                <% end_if %>

                <% if $Photo %>
                    <img class="img-responsive" src="$Photo.URL" alt="">
                    <hr>
                <% end_if %>

                <p class="lead">$Intro</p> 
                $Content
                <hr>

                <!-- ============================= -->
                <!-- Blog Comments -->
                <!-- ============================= -->
                <div class="well">
                    <h4>Leave a Comment:</h4>
                    $CommentForm
                    <!-- <form role="form">
                        <div class="form-group">
                            <textarea class="form-control" rows="3"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form> -->
                </div>
                <hr>

                <!-- Posted Comments -->
                <% loop $Comments %>
                    <div class="media">
                        <a class="pull-left" href="#">
                            <img class="media-object" src="$ThemeDir/img/avatar.gif">
                        </a>
                        <div class="media-body">
                            <h4 class="media-heading">$Name
                                <small>$Created.Format('j F, Y')</small>
                            </h4>
                            $Comment
                        </div>
                    </div>
                <% end_loop %>
            </div>
            <!-- ============================= -->
            <!-- Sidebar Widgets -->
            <!-- ============================= -->
            <div class="col-sm-4 desktop-only">
                <!-- Get the page fact -->
                <% include FunFact %>

                <!-- Get the latest blog posts -->
                <% include LatestNews %>
            </div>
        </div>
        <hr>
    </div>
</main>
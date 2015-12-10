<h2 class="page-heading text-center">$Subheading</h2>

<main class="page-holder">
    <div class="container">
        <div class="row">

            <!-- Content Column -->
            <div class="col-sm-8">
                <% loop $PaginatedChildren  %>
                    <div class="row">
                        <% if $Photo %>
                            <div class="col-sm-5">
                                <a href="$Link">
                                    <img src="$Photo.CroppedImage(250, 200).URL" class="img-responsive">
                                </a>
                                <br>
                            </div>
                            <div class="col-sm-7">
                        <% else %>
                            <div class="col-sm-8">
                        <% end_if %>
                            <h3><a href="$Link">$Title</a></h3>
                            <% if $Date %>
                                <h4 class="text-muted">Posted on $Date.Full()</h4>
                            <% end_if %>
                            <p class="text-muted">$Intro</p>
                            <a href="$Link" class="outline-btn">Read more &raquo;</a>
                        </div>
                    </div>
                    <hr class="wide">
                <% end_loop %>

                <!-- Pagination -->
                <% if $PaginatedChildren.MoreThanOnePage %>
                    <div class="row text-center">
                        <div class="col-lg-12">
                            <ul class="pagination">
                                <% if $PaginatedChildren.NotFirstPage %>
                                    <li>
                                        <a href="$PaginatedChildren.PrevLink">&laquo;</a>
                                    </li>
                                <% end_if %>

                                <% loop $PaginatedChildren.Pages %>
                                    <% if $CurrentBool %>
                                        <li class="active">
                                            <a href="$Link">$PageNum</a>
                                        </li>
                                    <% else %>
                                        <li>
                                            <a href="$Link">$PageNum</a>
                                        </li>
                                    <% end_if %>
                                <% end_loop %>
                                <% if $PaginatedChildren.NotLastPage %>
                                    <li>
                                        <a href="$PaginatedChildren.NextLink">&raquo;</a>
                                    </li>
                                <% end_if %>
                            </ul>
                        </div>
                    </div>
                <% end_if %>
                <!-- End Of Pagination -->
            </div>
            <!-- End Of Main Content -->

            <!-- Sidebar Column -->
            <div class="col-sm-4 desktop-only">
                <!-- Page Fact -->
                <% include FunFact %>
                <!-- Latest News / Blog Posts -->
                <% include LatestNews %>
            </div>
        </div>
    </div>
</main>



        




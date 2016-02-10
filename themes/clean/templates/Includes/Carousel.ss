<div id="blog-carousel" class="carousel slide" data-ride="carousel">
    
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <% loop $BlogPhotos %>
            <% if First %>
                <li data-target="#blog-carousel" data-slide-to="$Count" class="active"></li>
            <% else %>
                <li data-target="#blog-carousel" data-slide-to="$Count"></li>
            <% end_if %>
        <% end_loop %>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
        <% loop $BlogPhotos %>
            <% if First %>
                <div class="item active">
                    <img src="$SetWidth(750).URL">
                </div>
            <% else %>
                <div class="item">
                    <img src="$SetWidth(750).URL">
                </div>
            <% end_if %>
        <% end_loop %>
  </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#blog-carousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#blog-carousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    
</div>
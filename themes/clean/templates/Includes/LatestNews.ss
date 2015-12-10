<div class="well">
    <h4>Latest News</h4>
    <div class="row">
        <div class="col-lg-12">
            <ul class="list-unstyled">
                <% loop $LatestNews(4)  %>
                    <li>
                        <a href="$Link">
                            <i class="fa fa-caret-right"></i>
                            $Title.LimitCharacters(26)
                        </a>
                    </li>
                <% end_loop %>
            </ul>
        </div>
    </div>
</div>
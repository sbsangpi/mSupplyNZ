<div id="features-tabs">

    <!-- Nav tabs -->
    <ul class="nav nav-tabs nav-justified" role="tablist">
        <% loop $FeaturePages %>
            <% if First %>
                <li role="presentation" class="active">
                    <a href="#$Pos" aria-controls="$Title" role="tab" data-toggle="tab">$Title</a>
                </li>
             <% else %>
                <li role="presentation" class="">
                    <a href="#$Pos" aria-controls="$Pos" role="tab" data-toggle="tab">$Title</a>
                </li>
            <% end_if %>
        <% end_loop %>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <% loop $FeaturePages %>

            <% if First %>
                <div role="tabpanel" class="tab-pane active" id="$Pos">
            <% else %>
                 <div role="tabpanel" class="tab-pane" id="$Pos">
            <% end_if %>
                    <div class="row">
                        <% loop $LatestFeatures($ID) %>
                            <a class="link-scroll" href="features?tab=$Up.Pos/#f$ID">
                                <div class="col-sm-4 feature-box">
                                    <h4>$Icon.CroppedImage(40, 40) $Title</h4>
                                    <p class="text-grey">$Teaser</p>
                                    
                                </div>
                            </a>
                        <% end_loop %>
                    </div>
                </div>
        <% end_loop %>
    </div>
</div>

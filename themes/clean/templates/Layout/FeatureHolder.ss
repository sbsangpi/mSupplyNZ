<h2 class="page-heading text-center">$Subheading</h2>

<!-- Features Tabs -->
<div class="container">
    <div id="features-tabs">
        <ul class="nav nav-tabs nav-justified" role="tablist">
            <% loop $FeaturePages %>
                
                <% if $Pos == $Up.TabNumber %>
                    <li role="presentation" class="active"><a href="#$Pos" aria-controls="$Title" role="tab" data-toggle="tab">$Title</a></li>
                 <% else %>
                    <li role="presentation"><a href="#$Pos" aria-controls="$Pos" role="tab" data-toggle="tab">$Title</a></li>
                <% end_if %>

            <% end_loop %>
        </ul>
    </div>
</div>

<!-- Features -->
<div class="tab-content">
    
    <% loop $FeaturePages %>

        <% if $Pos == $Up.TabNumber %>
            <div role="tabpanel" class="tab-pane active" id="$Pos">
        <% else %>
            <div role="tabpanel" class="tab-pane" id="$Pos">
        <% end_if %>
        
        <!-- Feature Summaries Section -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-5">
                        <img src="$Photo.CroppedImage(335, 250).URL" class="img-responsive">
                    </div>
                    <div class="col-md-6 col-sm-7">
                        <h2>$Title</h2>
                        $Content
                    </div>
                </div>
            </div>
        </section>

        <!-- Features Information -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-6">
                        <% loop $LatestFeatures($ID) %>
                            <div id="f$ID" class="row">
                                <div class="col-md-10">
                                    <h4>$Icon.CroppedImage(40, 40) $Title</h4>
                                    <p>$Description</p>
                                </div>
                            </div>
                            <hr class="wide">
                        <% end_loop %>
                    </div>
                
                    <!-- Sidebar -->
                    <div id="sidebar-fix-top" class="features-sidebar desktop-only col-md-3 col-sm-4 ">
                        <div class="well"> 
                            <ul class="nav nav-stacked">
                                <% loop $Features %>
                                    <li><a class="page-scroll" href="#f$ID">$Title</a></li>
                                <%  end_loop %>
                            </ul>
                        </div>
                    </div> 
                    <!-- End Of Sidebar -->
                </div>                
            </div>
        </section>
    </div>
    <% end_loop %>
</div>
<br>


            
 

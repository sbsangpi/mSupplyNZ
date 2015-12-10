<h2 class="page-heading text-center">$Subheading</h2>
<!-- <br> -->
<!-- <p>$Subheading</p> -->

<!-- Features Tabs -->
<div class="container">
    <div class="row">
        <div class="col-sm-12">
  
            <div id="features-tabs">
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <% loop $Children %>
                        
                        <% if $Pos == 1 %>
                            <li role="presentation" class="active"><a href="#$Pos" aria-controls="$Title" role="tab" data-toggle="tab">$Title</a></li>
                         <% else %>
                            <li role="presentation"><a href="#$Pos" aria-controls="$Pos" role="tab" data-toggle="tab">$Title</a></li>
                        <% end_if %>

                    <% end_loop %>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Features -->
<div class="tab-content">
    
    <% loop $Children %>

        <% if $Pos == 1 %>
            <div role="tabpanel" class="tab-pane active" id="$Pos">
        <% else %>
            <div role="tabpanel" class="tab-pane" id="$Pos">
        <% end_if %>
        
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        
                        <div class="well downloads">
                            <% loop Downloads %>
                                
                                <h4 style="margin-top: 2em"><strong>$Title</strong></h4>
                                <div>$Description</div>
                                
                                
                                <a style="margin-top: 40px" href="$DownloadFile.URL" target="_blank" class="outline-btn">Download</a>
                                    
                            <% end_loop %>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>
    <% end_loop %>
</div>

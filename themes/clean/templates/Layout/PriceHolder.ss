<h2 class="page-heading text-center">$Subheading</h2>
    <br>
    $Content

<!-- Package Information -->
<aside>
    <div class="container">
        <div class="row">
            <% loop Packages %>
                <div class="col-sm-4">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h3 class="panel-title">$Title</h3>
                        </div>
                        <div class="panel-body">
                            <span class="price">$$Price</span>
                        </div>
                        <ul class="list-group">
                            <li class="list-group-item">$Description</li>
                            <li class="list-group-item">$Item1</li>
                            <li class="list-group-item">$Item2</li>
                            <li class="list-group-item">$Item3</li>
                            <li class="list-group-item">$Item4</li>
                        </ul>
                    </div>
                </div>
            <% end_loop %>
        </div>
    </div>
</aside>

<!-- Price Options Tabs -->
<div class="container">
    <div class="row">
        <h3 style="margin-left: 1em;">Optional Extras</h3>
        <div class="col-md-7 col-sm-8">
            <div id="features-tabs">
                <ul class="nav nav-tabs nav-justified" role="tablist">
                    <% loop $PricePages %>
                        <% if First %>
                            <li role="presentation" class="active"><a href="#$Pos" aria-controls="$Title" role="tab" data-toggle="tab">$Title</a></li>
                        <% else %>
                            <li role="presentation" class=""><a href="#$Pos" aria-controls="$Pos" role="tab" data-toggle="tab">$Title</a></li>
                      <% end_if %>
                    <% end_loop %>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- Prices Information -->
<div class="tab-content">
    <% loop PricePages %>
        <% if First %>
            <div role="tabpanel" class="tab-pane active" id="$Pos">
        <% else %>
            <div role="tabpanel" class="tab-pane" id="$Pos">
        <% end_if %>

            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-sm-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">$Title</h3>
                                </div>
                                <ul class="list-group">
                                    <% loop Prices($ID) %>
                                        <li class="list-group-item">
                                            $Description
                                            <span class="pull-right">$$Price</span>
                                        </li>
                                    <% end_loop %>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-4 col-md-offset-1">
                            <div class="well" style="height: 250px">
                                $Content
                            </div>
                        </div>
                    </div>
            </section>
        </div>
    <% end_loop %>
</div>

<div class="container">
    <div class="row paypal">
        <div class="col-sm-12 well well-lg text-center">
            <h2>Buy mSupply Lisences & Support Now</h2><br>
            <img data-toggle="modal" data-target="#myModal" src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/checkout-logo-large.png" alt="Check out with PayPal" />
        </div>
    </div>
</div>

<% include paypal %>

<% include GetInTouch %>
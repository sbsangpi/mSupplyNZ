

(function($) {
    "use strict"; // Start of use strict

    // Controls the scrolling sidebar on the features page
    $('a.page-scroll').bind('click', function(event) {

        var $anchor = $(this);
        var $href = $anchor.attr('href').split('/');

        $('html, body').stop().animate({
            scrollTop: ($($href[2]).offset().top - 90)
        }, 600, 'easeInOutSine');
        event.preventDefault();
    });

    // Controls scrolling on the features page when clicked through the homepage
    $(document).ready(function() {
         
         if( $(window.location.hash).offset() ){
            $("html, body").stop().animate({
                scrollTop:$(window.location.hash).offset().top - 90 }
                , 1200, 'easeInOutExpo');
        }

    });

    // Controls adding and removing classes on the feature sidebar
    $(window).scroll(function(){

        var scroll = $(window).scrollTop();

        var pageBottom = $( document ).height() - 880;

        if (scroll < 600) {

            $('.features-sidebar').attr('id', 'sidebar-fix-top').css('top', '720px');;

        } else if (scroll > pageBottom) {

            $('.features-sidebar').attr('id', 'sidebar-fix-bottom').css('top', pageBottom);
        
        } else {

            $('.features-sidebar').attr('id', 'sidebar-scroll').css('top', '15%');
        };
    });




    // Highlight the top nav as scrolling occurs
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    })

    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click(function() {
        $('.navbar-toggle:visible').click();
    });


    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })

})(jQuery); // End of use strict




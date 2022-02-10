(function($) {
    "use strict"


    /* 1. Proloder */
    $(window).on('load', function() {
        $('#preloader-active').delay(450).fadeOut('slow');
        $('body').delay(450).css({
            'overflow': 'visible'
        });
    });

    /* 2. sticky And Scroll UP */
    $(window).on('scroll', function() {
        var scroll = $(window).scrollTop();
        if (scroll < 100) {
            $(".header-sticky").removeClass("sticky-bar");
            $('#back-top').fadeOut(500);
        } else {
            $(".header-sticky").addClass("sticky-bar");
            $('#back-top').fadeIn(500);
        }
    });

    // 3. Scroll Up
    $('#back-top a').on("click", function() {
        $('body,html').animate({
            scrollTop: 0
        }, 400);
        return false;
    });

    /* 4. data-background*/
    $("[data-background]").each(function() {
        $(this).css("background", "url(" + $(this).attr("data-background") + ")" + "0 / cover no-repeat")
    });

    /* 10. WOW active */
    new WOW().init();

    // 11. ---- Mailchimp js --------//  
    function mailChimp() {
        $('#mc_embed_signup').find('form').ajaxChimp();
    }
    mailChimp();


    // 12 Pop Up Img
    var popUp = $('.single_gallery_part, .img-pop-up');
    if (popUp.length) {
        popUp.magnificPopup({
            type: 'image',
            gallery: {
                enabled: true
            }
        });
    }
    // 12 Pop Up Video
    var popUp = $('.popup-video');
    if (popUp.length) {
        popUp.magnificPopup({
            type: 'iframe'
        });
    }

    /* 13. counterUp*/
    $('.counter').counterUp({
        delay: 10,
        time: 3000
    });

    /* 14. Datepicker */
    $('#datepicker1').datepicker();

    // 15. Time Picker
    $('#timepicker').timepicker();

    //16. Overlay
    $(".snake").snakeify({
        speed: 200
    });


    //17.  Progress barfiller

    $('#bar1').barfiller();
    $('#bar2').barfiller();
    $('#bar3').barfiller();
    $('#bar4').barfiller();
    $('#bar5').barfiller();
    $('#bar6').barfiller();




    // Modal Activation
    $('.search-switch').on('click', function() {
        $('.search-model-box').fadeIn(400);
    });

    $('.search-close-btn').on('click', function() {
        $('.search-model-box').fadeOut(400, function() {
            $('#search-input').val('');
        });
    });

})(jQuery);
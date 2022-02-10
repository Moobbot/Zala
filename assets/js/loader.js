$(window).on('load', function(event) {
    $('#preloader-active').delay(1000).fadeOut('slow');
    $('body').delay(450).css({
        'overflow': 'visible'
    });
});
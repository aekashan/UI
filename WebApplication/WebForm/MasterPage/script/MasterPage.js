
// display a loading before the entire page is loaded
$(window).load(function () {
    $("#ajax-loader").fadeOut();
});
// enabled or disabled input in an ajax request
$(function () {
    var activeRequests = 0;
    $(document).ajaxStart(function () {
        $("input").attr("disabled", "disabled");
        if (activeRequests == 0)
            Pace.stop(); // stop
        activeRequests++;
    });
    $(document).ajaxStop(function () {
        $("input").removeAttr("disabled");
        activeRequests--;
        if (activeRequests == 0)
            Pace.restart(); // show progress indicator
    });
});
// resize
$(function () {
    function handleResize() {
        var h = $(window).height();
        h = h - 40;
        $('#body').css({ 'padding-top': '40px',  'min-height': h + 'px' });
    }
    $(function () {
        handleResize();
        $(window).resize(function () {
            handleResize();
        });
    });
});
// scroll to top
$(".scroll-top-wrapper").hide();
$(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 100) {
            $('.scroll-top-wrapper').fadeIn();
        } else {
            $('.scroll-top-wrapper').fadeOut();
        }
    });
    $('.scroll-top-wrapper').click(function () {
        $('body,html').animate({
            scrollTop: 0
        }, 650);
        return false;
    });
});
// wow animate.css if transitions are supported
wow = new WOW({
    animateClass: 'animated',
    offset: 100
});
wow.init();

$(function () {
    $(function () {
        handleResizeJumbotron();
        $(window).resize(function () {
            handleResizeJumbotron();
        });
    });
    function handleResizeJumbotron() {
        var imagePath = "../../images/picture/background1.jpg";
        var h = $(window).height();
        var w = $(window).width();
        h = h - 80;
        $("#jumbotronHeader").css({ "height": h + "px" });
        $("#jumbotronHeader").css("background-image", "url(" + imagePath + ")");
    }
});
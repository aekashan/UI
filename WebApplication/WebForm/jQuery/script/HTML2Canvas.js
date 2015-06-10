$(window).load(function () {
    setTimeout(function () {
        html2canvas($("body"), {
            onrendered: function (canvas) {
                var base64 = canvas.toDataURL("image/png");
                base64 = base64.replace(/^data[:]image\/(png|jpg|jpeg)[;]base64,/i, "");
                $.ajax({
                    type: 'POST'
                    , url: 'HTML2Canvas.aspx/UploadImage'
                    , data: '{ "base64" : "' + base64 + '" }'
                    , contentType: 'application/json; charset=utf-8'
                    , success: function (msg) {

                    }
                });
            }
        });
    }, 1000);

});
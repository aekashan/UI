
function sendFile(file) {
    $.ajax({
        url: 'FileUploader.ashx?FileName=' + file.name,
        type: 'POST',
        xhr: function () {
            myXhr = $.ajaxSettings.xhr();
            if (myXhr.upload) {
                myXhr.upload.addEventListener('progress', progressHandlingFunction, false);
            }
            return myXhr;
        },
        data: file,
        cache: false,
        contentType: false,
        processData: false,
        success: function (result) {
            $(".progress-bar").css('width', "100%").attr('aria-valuenow', 100).html('100% Complete');
            setTimeout(function () {
                $("#fileName").val("");
                $('#file').val("");
                $("#progress").html("");
            }, 1500);
        }
    });

    function progressHandlingFunction(e) {
        if (e.lengthComputable) {
            var s = parseInt((e.loaded / e.total) * 100);
            $(".progress-bar").css('width', s + "%").attr('aria-valuenow', s);
            $(".progress-bar").html(s + '% Complete');
        }
    }
}

function showProgress() {
    totalFileCount = $("#file")[0].files.length;
    for (j = 0; j < totalFileCount; j++) {
        $("#progress").html(
			"<div class='progress progress-striped active' style='margin-top:10px;margin-bottom:0px;'>" +
            "    <div class='progress-bar bg-turquoise' style='width:0%' aria-valuemax='100' aria-valuemin='0' aria-valuenow='45' role='progressbar'>" +
            "        <span class='sr-only'>" +
            "            0% Complete" +
            "        </span>" +
            "    </div>" +
            "</div>"
        );
    }
}

$(document).on('change', '#browse :file', function () {
    var input = $(this),
			numFiles = input.get(0).files ? input.get(0).files.length : 1,
			label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [numFiles, label]);
});

$('#browse :file').on('fileselect', function (event, numFiles, label) {
    var input = $(this).parents('.input-group').find(':text'), log = numFiles > 1 ? numFiles + ' files selected' : label;
    if (input.length) {
        input.val(log);
    }
    else {
        if (log)
            alert(log);
    }
});

$('#uploadToServer').click(function () {
    showProgress();
    sendFile($("#file")[0].files[0]);
});
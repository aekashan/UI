
var helpers = new Helpers();
var utility = helpers.utility;
delete helpers;

CKEDITOR.replace('editor1', {});

$(function () {
    var webMethod = 'ckediter.aspx/JsonSerializer';
    var data = "";
    var response = utility.webMethod(webMethod, data);
    if (response) {
        var value = response[0].editer;
        CKEDITOR.instances['editor1'].setData(value);
    }
});

$(document).on("click", "#Button1", function () {
    var value = CKEDITOR.instances['editor1'].getData();
    var webMethod = 'ckediter.aspx/JsonDeserialize';
    var data = { editer: value };
    var response = utility.webMethod(webMethod, data);
    if (response) {
        $("#deserialization").html(response);
        setTimeout(function () {
            $("#deserialization").fadeOut('slow');
        }, 3000);
    }
});
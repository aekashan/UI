<%@ Page
Language="C#" 
MasterPageFile="~/WebForm/MasterPage/Sample.Master" 
AutoEventWireup="true" 
CodeBehind="Linq2Xml.aspx.cs" 
Inherits="WebApplication.WebForm.jQuery.Linq2Xml" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div class="content fill">
        <div class="container">
            <div class="panel">
                <div class="panel-body">
                    <h5 class="underline">XML Data</h5>
                    <table id="book" class="table table-striped">
                        <thead>
                            <tr>
                                <td>Id</td>
                                <td>Author</td>
                                <td>Title</td>
                                <td>Genre</td>
                                <td>Price</td>
                                <td>Publish_date</td>
                                <td>Enabled</td>
                                <td>Edit</td>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="edit" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title text-silkspan" id="title">Add / Edit / Remove</h4>
                </div>
                <div class="modal-body">
                    <div id="article">
                        <table style="width:100%;">
                            <tr style="line-height:44px;">
                                <td>id</td>
                                <td><input id="Id" type='text' class='form-control' value=''/></td>
                            </tr>
                            <tr style="line-height:44px;">
                                <td>author</td>
                                <td><input id="Author" type='text' class='form-control' value=''/></td>
                            </tr>
                            <tr style="line-height:44px;">
                                <td>title</td>
                                <td><input id="Title" type='text' class='form-control' value=''/></td>
                            </tr>
                            <tr style="line-height:44px;">
                                <td>genre</td>
                                <td><input id="Genre" type='text' class='form-control' value=''/></td>
                            </tr>
                            <tr style="line-height:44px;">
                                <td>price</td>
                                <td><input id="Price" type='text' class='form-control' value=''/></td>
                            </tr>
                            <tr style="line-height:44px;">
                                <td>publish_date</td>
                                <td><input id="PublishDate" type='text' class='form-control' value=''/></td>
                            </tr>
                            <tr style="line-height:44px;">
                                <td>enabled</td>
                                <td><input id="Enabled" type='text' class='form-control' value=''/></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="Add" data-dismiss="modal">Add</button>
                    <button type="button" class="btn btn-primary" id="Edit" data-dismiss="modal">Edit</button>
                    <button type="button" class="btn btn-primary" id="Remove" data-dismiss="modal">Remove</button>
                    <button type="button" class="btn btn-default" id="Close" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
    <script src="../../js/helpers.js" type="text/javascript"></script>
    <script>
        var helpers = new Helpers();
        var utility = helpers.utility;
        delete helpers;

        loadData();

        function loadData() {
            var webMethod = 'Linq2Xml.aspx/GetXmlData';
            var data = { Id: null };
            var response = utility.webMethod(webMethod, data);
            if (response.length > 0) {
                $("#book > tbody").empty();
                for (var i = 0; i < response.length; i++) {
                    row = "<tr>" +
                    "    <td style='width:50px'>" + response[i].Id + "</td>" +
                    "    <td style='width:50px'>" + response[i].Author + "</td>" +
                    "    <td style='width:50px'>" + response[i].Title + "</td>" +
                    "    <td style='width:50px'>" + response[i].Genre + "</td>" +
                    "    <td style='width:50px'>" + response[i].Price + "</td>" +
                    "    <td style='width:50px'>" + response[i].PublishDate + "</td>" +
                    "    <td style='width:50px'>" + response[i].Enabled + "</td>" +
                    "    <td style='width:50px'><i class='fa fa-pencil-square-o pointer text-blue'></i></td>" +
                    "</tr>";
                    $("#book > tbody").append(row);
                }
            }
        }

        function elementData() {
            var data = {
                Mode: "",
                Id: $("#Id").val(),
                Author: $("#Author").val(),
                Title: $("#Title").val(),
                Genre: $("#Genre").val(),
                Price: $("#Price").val(),
                PublishDate: $("#PublishDate").val(),
                Enabled: $("#Enabled").val()
            };
            return data;
        }

        $(document).on('click', '.fa-pencil-square-o', function () {
            var par = $(this).parent().parent();
            var id = par.children("td:eq(0)").html();

            var webMethod = 'Linq2Xml.aspx/GetXmlData';
            var data = { Id: id };
            var response = utility.webMethod(webMethod, data);
            if (response.length > 0) {
                $("#Id").val(response[0].Id);
                $("#Author").val(response[0].Author);
                $("#Title").val(response[0].Title);
                $("#Genre").val(response[0].Genre);
                $("#Price").val(response[0].Price);
                $("#PublishDate").val(response[0].PublishDate);
                $("#Enabled").val(response[0].Enabled);
            }
            $('#edit').modal('show');
        });

        $(document).on('click', '#Add', function () {
            var webMethod = 'Linq2Xml.aspx/SetXmlData';
            var data = elementData();
            data.Mode = "Add";
            var response = utility.webMethod(webMethod, data);
            if (response.length > 0) {
                loadData();
            }
        });

        $(document).on('click', '#Edit', function () {
            var webMethod = 'Linq2Xml.aspx/SetXmlData';
            var data = elementData();
            data.Mode = "Edit";
            var response = utility.webMethod(webMethod, data);
            if (response.length > 0) {
                loadData();
            }
        });

        $(document).on('click', '#Remove', function () {
            var webMethod = 'Xml.aspx/SetXmlData';
            var data = elementData();
            data.Mode = "Remove";
            var response = utility.webMethod(webMethod, data);
            if (response.length > 0) {
                loadData();
            }
        });

    </script>
</asp:Content>

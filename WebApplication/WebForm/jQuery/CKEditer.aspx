<%@ Page Title="" Language="C#" MasterPageFile="~/WebForm/MasterPage/Sample.Master" ValidateRequest="false" AutoEventWireup="true" CodeBehind="CKEditer.aspx.cs" Inherits="WebApplication.WebForm.jQuery.CKEditer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div class="content fill">
        <div class="container">
            <div class="panel">
                <div class="panel-body">
                    <h5 class="underline">CKEditor 4.4.3 Full Package</h5>
                    <p><textarea id="editor1" name="editor1" rows="10" cols="100"></textarea></p>
                    <p><input id="Button1" type="button" value="Json Deserialization" class="btn bg-blue" /></p>
                    <p><div id="deserialization"></div></p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
    <script src="../../js/plugin/ckeditor/ckeditor.js"></script>
    <script src="../../js/plugin/ckeditor/config.js"></script>
    <script src="../../js/helpers.js"></script>
    <script src="script/CKEditer.js"></script>
</asp:Content>

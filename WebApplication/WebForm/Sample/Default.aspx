<%@ Page Title="" Language="C#" MasterPageFile="~/WebForm/MasterPage/Sample.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication.WebForm.Sample.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div id="jumbotronHeader" class="jumbotron">
        <div class="caption">
            <div class="container">
                <div class="container-fluid">
                    <div class="col-md-12">
                        <div class="col-md-8">
                        </div>
                        <div class="col-md-4">
                            <h5 class="underline">
                                Sign In
                            </h5>
                            <p><input id="username" class="form-control" type="text" placeholder="username"></input></p>
                            <p><input id="password" class="form-control" type="text" placeholder="password"></input></p>
                            <p class="text-right"><button class="btn btn-custom bg-blue pop" type="submit">Submit</button></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="script/Default.js"></script>
</asp:Content>

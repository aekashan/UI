<%@ Page Title="" Language="C#" MasterPageFile="~/WebForm/MasterPage/Sample.Master" AutoEventWireup="true" CodeBehind="UploadFiles.aspx.cs" Inherits="WebApplication.WebForm.UploadFile.UploadFiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div class="content fill">
        <div class="container">
            <div class="panel wow animated fadeInDown animated" data-wow-delay="0.3s" alt="" data-animation="fadeInDown">
                <div class="panel-body">
                    <h5 class="underline">Upload file to server</h5>
                    <div class="col-md-12">
                        <div class="row">
                            <div class="input-group" style="max-width:400px;">
					            <span class="input-group-btn">
						            <span id="browse" class="btn btn-file bg-blue">
							            Browse 
                                        <input id="file" type="file">
						            </span>
					            </span>
					            <input id="fileName" class="form-control" type="text" readonly>
				            </div>
                            <div id="progress">
				            </div>
                        </div>
                        <div class="row">
                            <div class="inline" style="max-width:400px;">
						        <span id="uploadToServer" class="btn bg-blue" style="width:70px;">
							        Upload
						        </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
    <script type="text/javascript" src="../../js/helpers.js"></script>
    <script type="text/javascript" src="script/UploadFiles.js"></script>
</asp:Content>

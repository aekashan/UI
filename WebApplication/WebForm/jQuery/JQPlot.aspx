<%@ Page Title="" Language="C#" MasterPageFile="~/WebForm/MasterPage/Sample.Master" AutoEventWireup="true" CodeBehind="JQPlot.aspx.cs" Inherits="WebApplication.WebForm.jQuery.JQPlot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div class="content fill">
        <div class="container">
            <div class="panel">
                <div class="panel-body">
                    <h5 class="underline">bar</h5>
                    <div id="chart1"></div>
                    <h5 class="underline">stack</h5>
                    <div id="chart2"></div>
                    <h5 class="underline">line</h5>
                    <div id="chart3"></div>
                    <h5 class="underline">filled</h5>
                    <div id="chart4"></div>
                    <h5 class="underline">bubble</h5>
                    <div class="col-md-9">
                        <div id="chart5"></div>
                        <div id="chart5Tooltip" style="position:absolute;z-index:99;display:none;min-width:100px;padding:8px;background-color:rgb(255, 255, 255);border-radius:6px;box-shadow: 0px 5px 15px -2px rgb(170, 170, 170);"></div>
                    </div>
                    <div class="col-md-3">
                        <table id="chart5Table" class="table">
                            <thead>
                                <tr style="background-color: rgb(255, 255, 255);">
                                    <th>Company</th>
                                    <th>R Value</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-md-6">
                        <h5 class="underline">pie</h5>
                        <div id="chart6"></div>
                    </div>
                    <div class="col-md-6">
                        <h5 class="underline">meter</h5>
                        <div id="chart7"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
    <link href="../../js/plugin/jqPlot/css/jquery.jqplot.css" rel="stylesheet" type="text/css" />
    <script src="../../js/plugin/jqPlot/js/jquery.jqplot.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.barRenderer.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.bubbleRenderer.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.cursor.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.canvasTextRenderer.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.canvasAxisLabelRenderer.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.categoryAxisRenderer.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.canvasAxisTickRenderer.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.canvasTextRenderer.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.enhancedLegendRenderer.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.highlighter.min.js"></script>
    <script src="../../js/plugin/jqPlot/js/jqplot.pointLabels.min.js"></script>
    <script src="../../js/helpers.js"></script>
    <script src="script/JQPlot.js"></script>
</asp:Content>


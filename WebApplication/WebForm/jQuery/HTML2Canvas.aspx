<%@ Page 
Language="C#" 
MasterPageFile="~/WebForm/MasterPage/Sample.Master" 
AutoEventWireup="true" 
CodeBehind="HTML2Canvas.aspx.cs" 
Inherits="WebApplication.WebForm.jQuery.HTML2Canvas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentNavBar" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="containerContent" runat="server">
    <div class="content fill">
        <div class="container">
            <div class="panel">
                <div class="panel-body">
                    <div class="paper" size="A4">
                        <p><img src="../../images/icon/logo.png" /></p>
                        <p>Quotation / Purchase Order Form</p>
                        <p>Inquiry □ Quotation&nbsp; □ Purchase Order</p>
                        <p>Date : &nbsp;&nbsp;&nbsp;&nbsp;/ &nbsp;&nbsp;&nbsp;&nbsp;/ &nbsp;&nbsp;&nbsp;&nbsp;</p>
                        <ul>
	                        <li>Please complete this form and send us by e-mail (export@funakoshi.co.jp) or fax (+81-3-5684-6297).</li>
	                        <li>Product prices on this catalog and our website do not include shipping and handling charges, VAT, import tariffs and service charges, etc.</li>
                        </ul>
                        <p>&nbsp;</p>
                        <p>Submit this form to :</p>
                        <p>Export Deperpment, Natz Co., Ltd</p>
                        <p>E-mail : support@natz.co.th</p>
                        <p>Fax : +81-3-5684-6297</p>
                        <p>Tel : +81-3-5684-6296</p>
                        <p>&nbsp;</p>
                        <p>Payment method</p>
                        <p>□ Credit Card</p>
                        <p>□ Visa □ Master □ AMEX □ Diners Club □ JCB</p>
                        <p>□ Bank transfer</p>
                        <p>□ Check</p>
                        <p>&nbsp;</p>
                        <p>Quotation inquiry form for US Dollar</p>
                        <table class="table table-bordered table-striped">
	                        <tbody>
		                        <tr style="text-align:center;">
			                        <td><p>Item No.</p></td>
			                        <td><p>Cat. No.</p></td>
			                        <td><p>Description</p></td>
			                        <td><p>Quantity</p></td>
			                        <td><p>Each price</p></td>
			                        <td><p>Total</p></td>
		                        </tr>
		                        <tr>
			                        <td><p>1</p></td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
		                        </tr>
		                        <tr>
			                        <td><p>2</p></td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
		                        </tr>
		                        <tr>
			                        <td><p>3</p></td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
		                        </tr>
		                        <tr>
			                        <td><p>4</p></td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
		                        </tr>
		                        <tr>
			                        <td><p>5</p></td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
			                        <td>&nbsp;</td>
		                        </tr>
		                        <tr>
			                        <td colspan="3" rowspan="3"><p>&nbsp;</p></td>
			                        <td colspan="2"><p>Subtotal</p></td><td>&nbsp;</td>
		                        </tr>
		                        <tr>
			                        <td colspan="2"><p>Shipping and Handling</p></td><td>&nbsp;</td>
		                        </tr>
		                        <tr>
			                        <td colspan="2"><p>Total price</p></td><td>&nbsp;</td>
		                        </tr>
	                        </tbody>
                        </table>
                        <p>※Above price does not include VAT, import tariffs and service charges etc.</p>
                        <p>※In case of the credit card settlement, the exchange rate on the date of the credit card payment applies.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="contentScript" runat="server">
    <script src="../../js/plugin/html2canvas/js/html2canvas.js"></script>
    <script src="../../js/plugin/html2canvas/js/jquery.plugin.html2canvas.js"></script>
    <script src="script/HTML2Canvas.js"></script>

    <script src="../../js/plugin/jsPDF/jspdf.js"></script>
	<script type="text/javascript" src="../../js/plugin/jsPDF/jspdf.plugin.addimage.js"></script>
	<script type="text/javascript" src="../../js/plugin/jsPDF/jspdf.plugin.from_html.js"></script>
	<script type="text/javascript" src="../../js/plugin/jsPDF/jspdf.plugin.ie_below_9_shim.js"></script>
	<script type="text/javascript" src="../../js/plugin/jsPDF/jspdf.plugin.sillysvgrenderer.js"></script>
	<script type="text/javascript" src="../../js/plugin/jsPDF/jspdf.plugin.split_text_to_size.js"></script>
	<script type="text/javascript" src="../../js/plugin/jsPDF/jspdf.plugin.standard_fonts_metrics.js"></script>
    <script>
        $(document).ready(function () {
            $(function () {
                var doc = new jsPDF();
                var specialElementHandlers = {
                    '#editor': function (element, renderer) {
                        return true;
                    }
                };

                $('#cmd').click(function () {
                    doc.fromHTML($('.paper').html(), 15, 15, {
                        'elementHandlers': specialElementHandlers
                    });
                    doc.save('sample-file.pdf');
                });
            });
        });
    </script>
</asp:Content>

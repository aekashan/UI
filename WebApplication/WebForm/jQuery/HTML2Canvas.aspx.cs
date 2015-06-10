using System;
using BLL;
using System.Web;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.text.xml;
using System.Web.UI;
using System.Text.RegularExpressions;

namespace WebApplication.WebForm.jQuery
{
    public partial class HTML2Canvas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        public static void UploadImage(string base64)
        {
            HTML2CanvasBLL html2CanvasBLL = new HTML2CanvasBLL();
            html2CanvasBLL.Base64StringToImage(base64);
            //html2CanvasBLL.Base64StringToPDF();
        }
    }
}
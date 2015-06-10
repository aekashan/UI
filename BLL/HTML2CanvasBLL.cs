using System;
using System.IO;
using System.Web;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace BLL
{
    public class HTML2CanvasBLL
    {
        public void Base64StringToImage(string base64)
        {
            string imagePath = HttpContext.Current.Server.MapPath("~/Upload/custom_name.png");
            Document doc = new Document();
            FileStream fs = new FileStream(imagePath, System.IO.FileMode.Create);
            BinaryWriter bw = new BinaryWriter(fs);
            byte[] data = Convert.FromBase64String(base64);
            bw.Write(data);
            bw.Close();
            fs.Close();
        }

        public void Base64StringToPDF()
        {
            string pdfPath = HttpContext.Current.Server.MapPath("~/Upload/custom_name.pdf");
            string imagePath = HttpContext.Current.Server.MapPath("~/Upload/custom_name.png");
            var pageSize = new iTextSharp.text.Rectangle(672, 972); //A4 w672px, h972px
            Document doc = new Document(pageSize, 0, 0, 0, 0);
            PdfWriter.GetInstance(doc, new FileStream(pdfPath, FileMode.Create));
            doc.Open();
            Image image = Image.GetInstance(imagePath);
            doc.Add(image);
            doc.Close();
        }

        public void DeleteImage()
        {
            string imagePath = HttpContext.Current.Server.MapPath("~/Upload/custom_name.png");
            if (File.Exists(imagePath))
                File.Delete(imagePath);
        }
    }
}

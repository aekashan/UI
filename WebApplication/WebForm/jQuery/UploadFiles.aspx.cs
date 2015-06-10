using System;
using System.Web;
using System.IO;
using System.Web.Services;

namespace WebApplication.WebForm.UploadFile
{
    public partial class UploadFiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static void test()
        {
            HttpContext context = HttpContext.Current;
            string fileName = HttpContext.Current.Request.QueryString["FileName"].ToString();
            string fullPath = HttpContext.Current.Server.MapPath("~/Upload/");
            if (File.Exists(fullPath + fileName))
            {
                File.Delete(fullPath + fileName);
            }
            else
            {
                if (!Directory.Exists(fullPath))
                {
                    Directory.CreateDirectory(fullPath);
                }
            }

            Byte[] buffer = new Byte[context.Request.GetBufferlessInputStream().Length];
            int readBuffer = context.Request.GetBufferlessInputStream().Read(buffer, 0, buffer.Length);
            FileStream objfilestream = new FileStream(fullPath + fileName, FileMode.Create, FileAccess.ReadWrite);
            objfilestream.Write(buffer, 0, readBuffer);
            objfilestream.Close();
        }
    }
}
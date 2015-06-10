using System;
using System.IO;
using System.Web;

namespace WebApplication.WebForm.jQuery
{
    public class FileUploader : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            string fileName = HttpContext.Current.Request.QueryString["FileName"].ToString();
            string fullPath = HttpContext.Current.Server.MapPath("~/Upload/");
            if (File.Exists(fullPath + fileName)) {
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

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
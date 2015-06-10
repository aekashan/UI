using System;
using BLL;

namespace WebApplication.WebForm.jQuery
{
    public partial class CKEditer : System.Web.UI.Page
    {
        [System.Web.Services.WebMethod]
        public static object JsonSerializer()
        {
            CKediterBLL ckEditerBLL = new CKediterBLL();
            return ckEditerBLL.JsonSerializer();
        }

        [System.Web.Services.WebMethod]
        public static string JsonDeserialize(string data)
        {
            CKediterBLL ckEditerBLL = new CKediterBLL();
            return ckEditerBLL.JsonDeserialize(data);
        }
    }
}
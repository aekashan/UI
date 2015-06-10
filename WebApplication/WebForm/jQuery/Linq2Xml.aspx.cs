using System;
using BLL;

namespace WebApplication.WebForm.jQuery
{
    public partial class Linq2Xml : System.Web.UI.Page
    {
        [System.Web.Services.WebMethod]
        public static object GetXmlData(string data)
        {
            XmlBLL xmlBAL = new XmlBLL();
            return xmlBAL.GetXmlData(data);
        }

        [System.Web.Services.WebMethod]
        public static object SetXmlData(string data)
        {
            XmlBLL xmlBAL = new XmlBLL();
            return xmlBAL.SetXmlData(data);
        }
    }
}
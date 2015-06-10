using System;
using System.Collections.Generic;
using System.Web;
using BOL;
using DAL;
using Helpers;

namespace BLL
{
    public class XmlBLL
    {
        XmlDAL xmlDAL = new XmlDAL(HttpContext.Current.Server.MapPath("~/xml/Catalog.xml"));
        XmlHelpers xmlHelpers = new XmlHelpers();

        public object GetXmlData(string data)
        {
            try
            {
                XmlBOL xmlBOL = JsonHelper.JsonDeserialize<XmlBOL>(data);
                List<XmlBOL> xmlData = xmlDAL.Select(xmlBOL);
                return xmlData;
            }
            catch (Exception ex)
            {
                return String.Format("An error occurred. The xml could not be read. Details of this error:\\n\\n{0}", ex.Message);
            }
        }

        public string SetXmlData(string data)
        {
            string result = "success";
            XmlBOL xmlBOL = JsonHelper.JsonDeserialize<XmlBOL>(data);
            switch (xmlBOL.Mode)
            {
                case "Add":
                    try 
                    {
                        xmlDAL.Add(xmlBOL);
                    }
                    catch (Exception ex)
                    {
                        return String.Format("An error occurred. The xml could not be remove. Details of this error:\\n\\n{0}", ex.Message);
                    }
                    break;
                case "Edit":
                    try 
                    {
                        xmlDAL.Edit(xmlBOL);
                    }
                    catch (Exception ex)
                    {
                        return String.Format("An error occurred. The xml could not be remove. Details of this error:\\n\\n{0}", ex.Message);
                    }
                    break;
                case "Remove":
                    try 
                    {
                        xmlDAL.Remove(xmlBOL);
                    }
                    catch (Exception ex) 
                    {
                        return String.Format("An error occurred. The xml could not be remove. Details of this error:\\n\\n{0}", ex.Message);
                    }
                    break;
            }
            return result;
        }
    }
}

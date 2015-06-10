using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Helpers;
using BOL;

namespace BLL
{
    public class CKediterBLL
    {
        public object JsonSerializer()
        {
            List<CkEditerBOL> lstCkEditerBOL = new List<CkEditerBOL>();
            lstCkEditerBOL.Add(
                new CkEditerBOL { editer = "<p>ASP.NET</p><p>JSON Serialization and Deserialization</p>" }
            );
            JsonHelper jsonHelper = new JsonHelper();
            string data = JsonHelper.JsonSerializer<List<CkEditerBOL>>(lstCkEditerBOL);
            return JsonHelper.JsonDeserialize<List<CkEditerBOL>>(data);
        }

        public string JsonDeserialize(string data)
        {
            JsonHelper jsonHelper = new JsonHelper();
            CkEditerBOL ckEditerBOL = JsonHelper.JsonDeserialize<CkEditerBOL>(data);
            string editer = ckEditerBOL.editer;
            return editer;
        }
    }
}

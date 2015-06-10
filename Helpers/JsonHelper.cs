using System;
using System.IO;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Web.Script.Serialization;

namespace Helpers
{
    /// <summary>
    /// JsonHelper
    /// </summary>
    public class JsonHelper
    {
        /// <summary>
        /// JSON Serialization
        /// </summary>
        public static string JsonSerializer<T>(T t)
        {
            try
            {
                DataContractJsonSerializer ser = new DataContractJsonSerializer(typeof(T));
                MemoryStream ms = new MemoryStream();
                ser.WriteObject(ms, t);
                string jsonString = Encoding.ASCII.GetString(ms.ToArray());
                ms.Close();
                return jsonString;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// JSON Deserialization
        /// </summary>
        public static T JsonDeserialize<T>(string jsonString)
        {
            try
            {
                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                T obj = javaScriptSerializer.Deserialize<T>(jsonString);
                return obj;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}

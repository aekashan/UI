using System;
using System.Collections.Generic;
using System.Data;
using System.Xml;

namespace Helpers
{
    /// <summary>
    /// XMLHelpers
    /// </summary>
    public class XmlHelpers
    {
        /// <summary>
        /// Read XML Data into a DataSet
        /// path = local file or a web address
        /// </summary>
        public DataSet ReadXmlToDataSet(string path)
        {
            try
            {
                DataSet ds = new DataSet();
                ds.ReadXml(path);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// Read XML Data into a DataTable
        /// path = local file or a web address
        /// </summary>
        public DataTable ReadXmlToDataTable(string path)
        {
            try
            {
                DataSet ds = new DataSet();
                ds.ReadXml(path);
                DataTable dt = ds.Tables[0];
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// Load XML Document from the specified path(local file or a web address)
        /// path = local file or a web address
        /// </summary>
        public XmlDocument LoadXmlDocument(string path)
        {
            try
            {
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.Load(path);
                return xmlDoc;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// Select a list of node matching the xpath xpresstion
        /// xmlDoc = XML Document
        /// xpath = /root/child[subchild='value']
        /// </summary>
        public XmlNodeList SelectNodeList(XmlDocument xmlDoc, string xpath)
        {
            try
            {
                XmlNodeList xmlNodeList = xmlDoc.SelectNodes(xpath);
                return xmlNodeList;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// Insert new nodes to an existing XML file
        /// xmlDoc = XML Document
        /// xpath = /root/child[subchild='value']
        /// child = tagname
        /// node = ["tagname", "value"]
        /// </summary>
        public void CreateChildNode(XmlDocument xmlDoc, string xpath, string child, string[,] node)
        {
            try
            {
                string namespaceURI = xmlDoc.DocumentElement.NamespaceURI;
                XmlNode xmlNode = xmlDoc.SelectSingleNode(xpath);
                XmlNode prof = xmlDoc.CreateNode(XmlNodeType.Element, child, namespaceURI);
                for (int i = 0; i < node.GetLongLength(0); i++)
                {
                    XmlNode newXmlNode = xmlDoc.CreateNode(XmlNodeType.Element, node[i, 0], namespaceURI);
                    newXmlNode.InnerText = node[i, 1];
                    prof.AppendChild(newXmlNode);
                }
                xmlNode.AppendChild(prof);
                xmlDoc.Save(xmlDoc.BaseURI);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// Edit child nodes on a existing XML file
        /// ********************************************
        /// xmlDoc = XML Document
        /// xpath = /root/child[subchild='value']
        /// node = ["tagname", "value"]
        /// ********************************************
        /// </summary>
        public void EditChildNodes(XmlDocument xmlDoc, string xpath, string[,] node)
        {
            try
            {
                XmlNodeList xmlNodeList = SelectNodeList(xmlDoc, xpath);
                if (xmlNodeList.Count > 0)
                {
                    for (int i = 0; i < xmlNodeList.Count; i++)
                    {
                        for (int j = 0; j < node.GetLongLength(0); j++)
                        {
                            xmlNodeList[0].ChildNodes[j].InnerText = node[j, 1];
                        }
                    }
                    xmlDoc.Save(xmlDoc.BaseURI);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// Edit child nodes on a existing XML file
        /// ********************************************
        /// xmlDoc = XML Document
        /// xpath = /root/child[subchild='value']
        /// node = ["tagname", "value"]
        /// ********************************************
        /// </summary>
        public void DeleteChildNodes(XmlDocument xmlDoc, string xpath, string[,] node)
        {
            try
            {
                XmlNodeList xmlNodeList = SelectNodeList(xmlDoc, xpath);
                if (xmlNodeList.Count > 0)
                {
                    for (int i = 0; i < xmlNodeList.Count; i++)
                    {
                        for (int j = 0; j < node.GetLongLength(0); j++)
                        {
                            xmlNodeList[0].ChildNodes[j].InnerText = node[j, 1];
                        }
                    }
                    xmlDoc.Save(xmlDoc.BaseURI);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// Remove child nodes on a existing XML file
        /// ********************************************
        /// xmlDoc = XML Document
        /// xpath = /root/child[subchild='value']
        /// ********************************************
        /// </summary>
        public void XmlRemoveChild(XmlDocument xmlDoc, string xpath)
        {
            try
            {
                XmlNodeList xmlNodeList = xmlDoc.SelectNodes(xpath);
                if (xmlNodeList.Count > 0)
                {
                    for (int i = 0; i < xmlNodeList.Count; i++)
                    {
                        xmlNodeList[i].ParentNode.RemoveChild(xmlNodeList[i]);
                    }
                    xmlDoc.Save(xmlDoc.BaseURI);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}

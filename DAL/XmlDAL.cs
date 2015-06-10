using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using BOL;

namespace DAL
{
    public class XmlDAL
    {
        private string fileName;
        private XDocument xDoc;

        public XmlDAL(string uri)
        {
            xDoc = XDocument.Load(uri);
            fileName = uri;
        }

        public void Add(XmlBOL xmlBOL)
        {
            xDoc.Element("catalog")
                .Add(
                    new XElement("book",
                        new XElement("id", xmlBOL.Id),
                        new XElement("author", xmlBOL.Author),
                        new XElement("title", xmlBOL.Title),
                        new XElement("genre", xmlBOL.Genre),
                        new XElement("price", xmlBOL.Price),
                        new XElement("publish_date", xmlBOL.PublishDate),
                        new XElement("enabled", xmlBOL.Enabled)
                    )
                );
            xDoc.Save(fileName);
        }

        public void AddAfterSelf(XmlBOL xmlBOL)
        {
            xDoc.Element("catalog")
                .Elements("book")
                .Where(item => item.Attribute("id").Value == xmlBOL.Id)
                .FirstOrDefault()
                .AddAfterSelf(
                    new XElement("book",
                        new XElement("id", xmlBOL.Id),
                        new XElement("author", xmlBOL.Author),
                        new XElement("title", xmlBOL.Title),
                        new XElement("genre", xmlBOL.Genre),
                        new XElement("price", xmlBOL.Price),
                        new XElement("publish_date", xmlBOL.PublishDate),
                        new XElement("enabled", xmlBOL.Enabled)
                    )
                );
        }

        public void Edit(XmlBOL xmlBOL)
        {
            var xmlData =
                (from xml in xDoc.Descendants("book")
                 where xml.Element("id").Value == xmlBOL.Id
                 select xml).ToList();
            foreach (var xml in xmlData)
            {
                xml.Element("id").Value = xmlBOL.Id;
                xml.Element("author").Value = xmlBOL.Author;
                xml.Element("title").Value = xmlBOL.Title;
                xml.Element("genre").Value = xmlBOL.Genre;
                xml.Element("price").Value = xmlBOL.Price;
                xml.Element("publish_date").Value = xmlBOL.PublishDate;
                xml.Element("enabled").Value = xmlBOL.Enabled;
            }
            xDoc.Save(fileName);
        }

        public void Remove(XmlBOL xmlBOL)
        {
            var xmlData =
                (from xml in xDoc.Descendants("book")
                 where xml.Element("id").Value == xmlBOL.Id
                 select xml).ToList();
            foreach (var xml in xmlData)
            {
                xml.Remove();
            }
            xDoc.Save(fileName);
        }

        public List<XmlBOL> Select(XmlBOL xmlBOL)
        {
            List<XmlBOL> xmlData =
                (from xml in xDoc.Elements("catalog").Elements("book")
                 where xml.Element("id").Value == xmlBOL.Id || xmlBOL.Id == null
                 select new XmlBOL
                 {
                     Id = xml.Element("id").Value,
                     Author = xml.Element("author").Value,
                     Title = xml.Element("title").Value,
                     Genre = xml.Element("genre").Value,
                     Price = xml.Element("price").Value,
                     PublishDate = xml.Element("publish_date").Value,
                     Enabled = xml.Element("enabled").Value
                 }).ToList();
            return xmlData;
        }
    }
}
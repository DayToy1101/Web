using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class LinqXmlInsert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Category.xml");
        XElement els = XElement.Load(xmlFilePath);
        XElement e1 = new XElement("Category", new XElement("CategoryId", txtCategoryId.Text), new XElement("Name", txtName.Text),
            new XElement("Descn", txtDescn.Text));
        els.Add(e1);
        els.Save(xmlFilePath);
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("LinqXml.aspx");
    }
}
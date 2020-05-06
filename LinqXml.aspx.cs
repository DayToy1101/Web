using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class LinqXml : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open('Category.xml','_blank')</script>");
    }
    protected void btnQuery_Click(object sender, EventArgs e)
    {
        string xmlFilePath = Server.MapPath("~/Category.xml");
        XElement els = XElement.Load(xmlFilePath);
        var elements = from e1 in els.Elements("Category") where (string)e1.Element("Name") == txtName.Text select e1;
        if (elements.Count() == 0)
        {
            lblMsg.Text = "没有满足条件的数据";
        }
        else
        {
            foreach (XElement e1 in elements)
            {
                lblMsg.Text = "CategoryId:" + e1.Element("CategoryId").Value + "<br />" + "Name:" + e1.Element("Name").Value + "<br />" + "Descn:" + e1.Element("Descn").Value;
            }
        }
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("LinqXmlInsert.aspx");
    }
}
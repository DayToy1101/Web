using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class webpart_Subjects_Subject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ShowDiv();
    }

    #region  œ‘ ædiv
    private void ShowDiv()
    {
        if (Request["flag"] == "1")
        {
            div1.Visible = true;
            div2.Visible = false;
            div3.Visible = false;
            div4.Visible = false;
            div5.Visible = false;
        }
        if (Request["flag"] == "2")
        {
            div1.Visible = false;
            div2.Visible = true;
            div3.Visible = false;
            div4.Visible = false;
            div5.Visible = false;
        }
        if (Request["flag"] == "3")
        {
            div1.Visible = false;
            div2.Visible = false;
            div3.Visible = true;
            div4.Visible = false;
            div5.Visible = false;
        }
        if (Request["flag"] == "4")
        {
            div1.Visible = false;
            div2.Visible = false;
            div3.Visible = false;
            div4.Visible = true;
            div5.Visible = false;
        }
        if (Request["flag"] == "5")
        {
            div1.Visible = false;
            div2.Visible = false;
            div3.Visible = false;
            div4.Visible = false;
            div5.Visible = true;
        }
    }
    #endregion

}

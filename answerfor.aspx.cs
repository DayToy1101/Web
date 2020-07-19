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

public partial class controls_answerfor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string receiveid = Request["receiveid"];
        string sendid = Session["rid"].ToString();
        string content = comContent.Text.ToString();
        string sendtime = DateTime.Now.ToString();


        if (leavewords.AddLeavewords(content, receiveid, sendid, sendtime))
        {
            lblNews.InnerHtml = "<script>alert('问题回复成功！');</script>";
        }
        else
        {
            lblNews.InnerHtml = "<script>alert('问题咨询失败，请重试！');</script>";
        }
    }
}

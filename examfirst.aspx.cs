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
using System.Data.SqlClient;
using System.Text;


public partial class webpart_exam_examfirst : Test
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("/code/Error.aspx");
        }
        Label1.Text = Session["status"].ToString();
        SqlDataReader sr = GetSubjectName();
        select.DataTextField = "name";
        select.DataValueField = "sid";
        select.DataSource = sr;
        select.DataBind();
        lblContentNews.InnerHtml = ShowTopNews();
    }

    #region 显示新闻列表
    /// <summary>
    /// 显示前几条新闻
    /// </summary>
    private string ShowTopNews()
    {
        string SQL = "select nid,substring(title,0,12) as title from news";
        //DataSet ds = News.ShowTop5News();
        DataSet ds = SQLBASE.FillDataSet(SQL);
        StringBuilder strHtmlCode = new StringBuilder(1000);
        strHtmlCode.AppendFormat("<table height=\"175\"; align='center'>");

        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            DataRow row = ds.Tables[0].Rows[i];
            strHtmlCode.AppendFormat("<tr><td align='center'><a href=ShowNews.aspx?nid={0} target='_self'>{1}<a></td></tr>", row["nid"].ToString(), row["TITLE"].ToString());

        }
        strHtmlCode.AppendFormat("</table>");
        return strHtmlCode.ToString();
    }
    #endregion
}

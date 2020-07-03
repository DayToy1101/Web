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
using System.Text;

public partial class datamaintenance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        div1.Visible = true;
        div2.Visible = false;
        div3.Visible = false;
        div4.Visible = false;
        div5.Visible = false;
        if (Session["username"]==null)
        {
            Response.Redirect("/code/register.aspx");
        }
        if (Session["flag"]!=null && Session["flag"].ToString()!="0")
        {
            Response.Redirect("/code/register.aspx");
        }
        //lblContent.InnerHtml = ShowTopNews();
        ShowDiv();
        //DatalistBind();
    }
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
    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        DataList1.DataBind();
    }

    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }

    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        //string id = DataList1.DataKeys[e.Item.ItemIndex].ToString();
        string Name = ((Label)e.Item.FindControl("Label12")).Text;
        string postcode = ((TextBox)e.Item.FindControl("TextBox1")).Text+"test";
        string birthday = ((TextBox)e.Item.FindControl("TextBox2")).Text;
        string sex = ((TextBox)e.Item.FindControl("TextBox3")).Text;
        string degree = ((TextBox)e.Item.FindControl("TextBox4")).Text;
        string adress = ((TextBox)e.Item.FindControl("TextBox5")).Text;
        string mail = ((TextBox)e.Item.FindControl("TextBox6")).Text;
        string province = ((TextBox)e.Item.FindControl("TextBox7")).Text;
        string discribe = ((TextBox)e.Item.FindControl("TextBox8")).Text;
        string picture = ((TextBox)e.Item.FindControl("TextBox9")).Text;
        SqlDataSource1.UpdateParameters["username"].DefaultValue = Name;
        SqlDataSource1.UpdateParameters["postcode"].DefaultValue = postcode;
        SqlDataSource1.UpdateParameters["birthday"].DefaultValue = birthday;
        SqlDataSource1.UpdateParameters["sex"].DefaultValue = sex;
        SqlDataSource1.UpdateParameters["degree"].DefaultValue = degree;
        SqlDataSource1.UpdateParameters["adress"].DefaultValue = adress;
        SqlDataSource1.UpdateParameters["mail"].DefaultValue = mail;
        SqlDataSource1.UpdateParameters["province"].DefaultValue = province;
        SqlDataSource1.UpdateParameters["discribe"].DefaultValue = discribe;
        SqlDataSource1.UpdateParameters["picture"].DefaultValue = picture.ToString();
        SqlDataSource1.Update();
        DataList1.EditItemIndex = -1;
    }

    #region 显示新闻列表
    /// <summary>
    /// 显示前几条新闻
    /// </summary>
    private string ShowTopNews()
    {
        string SQL = "select top 10 nid,substring(title,0,12) as title from news";
        //DataSet ds = News.ShowTop5News();
        DataSet ds = SQLBASE.FillDataSet(SQL);
        StringBuilder strHtmlCode = new StringBuilder(1000);
        strHtmlCode.AppendFormat("<marquee direction='up' onmouseover=this.stop() onmouseout=this.start() scrollAmount=3 scrollDelay=100><table height=\"175\"; align='center'>");


        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            DataRow row = ds.Tables[0].Rows[i];
            strHtmlCode.AppendFormat("<tr><td align='center'><a href=ShowNews.aspx?nid={0} target='_blank'>{1}<a></td></tr>", row["nid"].ToString(), row["TITLE"].ToString());

        }
        strHtmlCode.AppendFormat("</table></marquee>");
        return strHtmlCode.ToString();
    }
    #endregion


    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("/code/Default.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("/code/default.aspx");
    }
}

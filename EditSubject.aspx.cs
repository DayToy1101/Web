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

public partial class manager_EditSubject : FunctionBase
{
    #region 屬性
    /// <summary>
    /// 頁面名稱
    /// </summary>
    public string PageTitle
    {
        get
        {
            if (ViewState["PageTitle"] != null)
            {
                //返回PageTitle的值
                return (string)ViewState["PageTitle"];
            }
            else
            {
                return "";
            }
        }
        set
        {
            //為PageTitle付值
            ViewState["PageTitle"] = value;
        }
    }
    /// <summary>
    /// 頁面編輯狀態
    /// </summary>
    public bool EDITSTATUS
    {
        get
        {
            if (ViewState["EDITSTATUS"] != null)
            {
                //返回EDITSTATUS的值
                return (bool)ViewState["EDITSTATUS"];
            }
            else
            {
                return true;
            }
        }
        set
        {
            //為EDITSTATUS付值
            ViewState["EDITSTATUS"] = value;
        }
    }
    #endregion

    #region 页面初始化
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string flag = Request["flag"];
            if (flag == "0")
            {
                EDITSTATUS = false;
                PageTitle = "新增";
            }
            else
            {
                EDITSTATUS = true;
                PageTitle = "更新";
            }
            OverWrite();
        }
    }
    /// <summary>
    /// 新增和更新的重填
    /// </summary>
    private void OverWrite()
    {
        if (EDITSTATUS)
        {
            txtUserid.Disabled = true;
            string strUserid = Request["sid"];
            DataSet ds = subject.GetsubjectByUserid(strUserid);
            DataRow dr = ds.Tables[0].Rows[0];
            txtUserid.Value = dr["sid"].ToString();
            txtName.Value = dr["name"].ToString();

            Select1.DataTextField = "sortname";
            Select1.DataValueField = "sortid";
            Select1.DataSource = Sort.GetSort();
            Select1.DataBind();
            Select1.Value = dr["sortid"].ToString();
            //Select1.Value=t

        }
        else
        {
            Select1.DataTextField = "sortname";
            Select1.DataValueField = "sortid";
            Select1.DataSource = Sort.GetSort();
            Select1.DataBind();
            div1.Visible = false;
            txtUserid.Value = "";
            txtName.Value = "";
        }
    }
    #endregion

    #region 按钮事件
    /// <summary>
    /// 重填按钮事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_ServerClick(object sender, EventArgs e)
    {
        OverWrite();
    }
    /// <summary>
    /// 保存按钮事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_ServerClick1(object sender, EventArgs e)
    {
        //新增时
        if (!EDITSTATUS)
        {

            if (subject.Addsubject(No_SqlHack(txtName.Value.ToString().Trim()),
                                                Select1.Value.ToString()))
            {
                Response.Write("<script>alert('新增成功！')</script>");
                OverWrite();
            }
            else
            {
                Response.Write("<script>alert('新增失败，请重试！')</script>");
                OverWrite();
            }
        }
        else//更新时
        {
            if (subject.Editsubject(No_SqlHack(txtUserid.Value.ToString().Trim()),
                                               No_SqlHack(txtName.Value.ToString().Trim()), Select1.Value.ToString()))
            {
                lblNews.InnerHtml = FreshParentPage();
                Response.Write("<script>alert('更新成功！');window.close();</script>");
            }
            else
            {
                Response.Write("<script>alert('更新失败，请重试！')</script>");
            }
        }
    }
    #endregion
}

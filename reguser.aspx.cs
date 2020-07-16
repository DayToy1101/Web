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

public partial class manager_reguser : System.Web.UI.Page
{
    #region 页面初始化
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack || Request["freshflag"] != null && Request["freshflag"].ToString() == "1")
        {
            ShowGridView();
            ShowStats();
        }
    }
    #endregion

    #region grideview分页函数
    /// <summary>
    /// 显示当前分页信息
    /// </summary>
    private void ShowStats()
    {
        //显示当前页面是第几页
        lblCurrentIndex.Text = "第 " + (GridView1.PageIndex + 1).ToString() + " 页";
        //显示总页数
        lblPageCount.Text = "总共 " + GridView1.PageCount.ToString() + " 页";
    }
    /// <summary>
    /// 分别处理”最首页“、“前一页”、“下一页”和“最后页”四个按钮单击时设置DataGrid控件的当前页的索引
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    public void PageButtonClick(object sender, EventArgs e)
    {
        //取得按钮单击时传递的命令参数
        string arg = ((LinkButton)sender).CommandArgument.ToString();
        switch (arg)
        {
            //如果点击的是“下一页”
            case "next":
                //如果当前页不是最后一页
                if (GridView1.PageIndex < (GridView1.PageCount - 1))
                {
                    //设置DataGrid控件的当前页索引为下一页面
                    GridView1.PageIndex += 1;
                }
                break;
            //如果点击的是“前一页”
            case "prev":
                //如果当前页不是首页
                if (GridView1.PageIndex > 0)
                {
                    //设置DataGrid控件的当前页索引为上一页面
                    GridView1.PageIndex -= 1;
                }
                break;
            //如果点击的是“最后页”
            case "last":
                //设置当前页的索引为最后一页
                GridView1.PageIndex = (GridView1.PageCount - 1);
                break;
            //默认为”最首页“
            default:
                //设置当前页的索引为首页
                GridView1.PageIndex = System.Convert.ToInt32(arg);
                break;
        }
        ShowGridView();
        ShowStats();
    }
    #endregion

    #region 绑定gridview
    private void ShowGridView()
    {
        GridView1.DataSource = reguser.GetManager();
        GridView1.DataBind();
    }
    #endregion

    #region 按钮事件处理
    /// <summary>
    /// 查询按钮事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.ToString().Trim() == "")
        {
            ShowGridView();
        }
        else
        {
            if (Select1.Value == "txtUserid")
            {
                GridView1.DataSource = reguser.GetManagerByName(TextBox1.Text.ToString().Trim());
                GridView1.DataBind();
            }
        }
    }
    /// <summary>
    /// 删除按钮事件
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        string userid = GridView1.SelectedDataKey.Value.ToString();
        if (reguser.DeleteReguserByid(userid))
        {
            Response.Write("<script>alert('删除成功！')</script>");
            Response.Redirect("reguser.aspx");
        }
        else
        {
            Response.Write("<script>alert('删除失败！')</script>");
            Response.Redirect("reguser.aspx");
        }
    }
    #endregion
}

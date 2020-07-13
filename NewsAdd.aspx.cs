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

public partial class manager_NewsAdd : System.Web.UI.Page
{
    #region ҳ���ʼ��
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack || Request["freshflag"] != null && Request["freshflag"].ToString() == "1")
        {
            ShowGridView();
            ShowStats();
        }
    }
    #endregion

    #region grideview��ҳ����
    /// <summary>
    /// ��ʾ��ǰ��ҳ��Ϣ
    /// </summary>
    private void ShowStats()
    {
        //��ʾ��ǰҳ���ǵڼ�ҳ
        lblCurrentIndex.Text = "�� " + (GridView1.PageIndex + 1).ToString() + " ҳ";
        //��ʾ��ҳ��
        lblPageCount.Text = "�ܹ� " + GridView1.PageCount.ToString() + " ҳ";
    }
    /// <summary>
    /// �ֱ�������ҳ������ǰһҳ��������һҳ���͡����ҳ���ĸ���ť����ʱ����DataGrid�ؼ��ĵ�ǰҳ������
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    public void PageButtonClick(object sender, EventArgs e)
    {
        //ȡ�ð�ť����ʱ���ݵ��������
        string arg = ((LinkButton)sender).CommandArgument.ToString();
        switch (arg)
        {
            //���������ǡ���һҳ��
            case "next":
                //�����ǰҳ�������һҳ
                if (GridView1.PageIndex < (GridView1.PageCount - 1))
                {
                    //����DataGrid�ؼ��ĵ�ǰҳ����Ϊ��һҳ��
                    GridView1.PageIndex += 1;
                }
                break;
            //���������ǡ�ǰһҳ��
            case "prev":
                //�����ǰҳ������ҳ
                if (GridView1.PageIndex > 0)
                {
                    //����DataGrid�ؼ��ĵ�ǰҳ����Ϊ��һҳ��
                    GridView1.PageIndex -= 1;
                }
                break;
            //���������ǡ����ҳ��
            case "last":
                //���õ�ǰҳ������Ϊ���һҳ
                GridView1.PageIndex = (GridView1.PageCount - 1);
                break;
            //Ĭ��Ϊ������ҳ��
            default:
                //���õ�ǰҳ������Ϊ��ҳ
                GridView1.PageIndex = System.Convert.ToInt32(arg);
                break;
        }
        ShowGridView();
        ShowStats();
    }
    #endregion

    #region ��gridview
    private void ShowGridView()
    {
        GridView1.DataSource = news.Getnews();
        GridView1.DataBind();
    }
    #endregion

    #region ��ť�¼�����
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        string userid = GridView1.SelectedDataKey.Value.ToString();
        if (news.Deletenews(userid))
        {
            Response.Write("<script>alert('ɾ���ɹ���')</script>");
            Response.Redirect("NewsAdd.aspx");
        }
        else
        {
            Response.Write("<script>alert('ɾ��ʧ�ܣ�')</script>");
            Response.Redirect("NewsAdd.aspx");
        }
    }
    #endregion
}

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
    #region ����
    /// <summary>
    /// ������Q
    /// </summary>
    public string PageTitle
    {
        get
        {
            if (ViewState["PageTitle"] != null)
            {
                //����PageTitle��ֵ
                return (string)ViewState["PageTitle"];
            }
            else
            {
                return "";
            }
        }
        set
        {
            //��PageTitle��ֵ
            ViewState["PageTitle"] = value;
        }
    }
    /// <summary>
    /// ��澎݋��B
    /// </summary>
    public bool EDITSTATUS
    {
        get
        {
            if (ViewState["EDITSTATUS"] != null)
            {
                //����EDITSTATUS��ֵ
                return (bool)ViewState["EDITSTATUS"];
            }
            else
            {
                return true;
            }
        }
        set
        {
            //��EDITSTATUS��ֵ
            ViewState["EDITSTATUS"] = value;
        }
    }
    #endregion

    #region ҳ���ʼ��
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string flag = Request["flag"];
            if (flag == "0")
            {
                EDITSTATUS = false;
                PageTitle = "����";
            }
            else
            {
                EDITSTATUS = true;
                PageTitle = "����";
            }
            OverWrite();
        }
    }
    /// <summary>
    /// �����͸��µ�����
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

    #region ��ť�¼�
    /// <summary>
    /// ���ť�¼�
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_ServerClick(object sender, EventArgs e)
    {
        OverWrite();
    }
    /// <summary>
    /// ���水ť�¼�
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Button1_ServerClick1(object sender, EventArgs e)
    {
        //����ʱ
        if (!EDITSTATUS)
        {

            if (subject.Addsubject(No_SqlHack(txtName.Value.ToString().Trim()),
                                                Select1.Value.ToString()))
            {
                Response.Write("<script>alert('�����ɹ���')</script>");
                OverWrite();
            }
            else
            {
                Response.Write("<script>alert('����ʧ�ܣ������ԣ�')</script>");
                OverWrite();
            }
        }
        else//����ʱ
        {
            if (subject.Editsubject(No_SqlHack(txtUserid.Value.ToString().Trim()),
                                               No_SqlHack(txtName.Value.ToString().Trim()), Select1.Value.ToString()))
            {
                lblNews.InnerHtml = FreshParentPage();
                Response.Write("<script>alert('���³ɹ���');window.close();</script>");
            }
            else
            {
                Response.Write("<script>alert('����ʧ�ܣ������ԣ�')</script>");
            }
        }
    }
    #endregion
}

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

public partial class manager_middle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strUserid = Request["userid"];
        //Response.Write(window.open("EditManager.aspx?flag=0&" + strUserid + ",'new','height=400,width=500,top=200,left=200,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no');"));
        Response.Write("<script>self.close();window.open('EditManager.aspx?flag=1&userid=" + strUserid + "','','menubar=no,toolbar=no,location=no,directories=no,status=no,height=400,width=500,top=200,left=200,scrollbars=no,resizable=no');</script>");    
    }
}

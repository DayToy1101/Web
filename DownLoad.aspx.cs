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

public partial class webpart_Subjects_DownLoad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string filepath = Request["filepath"];
        string filename = Request["filename"];
        string fid = Request["fid"];
        //下载时更新数据库
        string SQL = "update files set downnum=downnum+1 where fid={0}";
        SQLBASE.ExcuteNonQuery＿SQL(string.Format(SQL,fid));
        Response.Redirect(filepath+filename);
    }
}

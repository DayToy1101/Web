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

public partial class teacher_Uplosd : System.Web.UI.Page
{
    protected void Page_Load(object sender, System.EventArgs e)
    {
        //Title.Text = "<h3>多文件上传</h3>";
        //Upload.Text = "开始上传";
    }

    

    protected void Upload_Click(object sender, System.EventArgs e)
    {
        upMorefile();
    }

    private bool upMorefile()
    {
        //遍历File表单元素
        System.Web.HttpFileCollection files = System.Web.HttpContext.Current.Request.Files;
        //状态信息
        System.Text.StringBuilder strMsg = new System.Text.StringBuilder("上传的文件信息分别为：<hr color=red>");
        int fileCount;
        int filecount = files.Count;
        try
        {
            for (fileCount = 0; fileCount < files.Count; fileCount++)
            {
                //定义访问客户端上传文件的对象
                System.Web.HttpPostedFile postedFile = files[fileCount];
                string fileName, fileExtension;
                //取得上传得文件名
                fileName = System.IO.Path.GetFileName(postedFile.FileName);
                if (fileName != String.Empty)
                {
                    //取得文件的扩展名
                    fileExtension = System.IO.Path.GetExtension(fileName);
                    //上传的文件信息
                    strMsg.Append("上传的文件类型：" + postedFile.ContentType.ToString() + "<br>");
                    strMsg.Append("客户端文件地址：" + postedFile.FileName + "<br>");
                    strMsg.Append("上传文件的文件名：" + fileName + "<br>");
                    strMsg.Append("上传文件的扩展名：" + fileExtension + "<br><hr color=red>");
                    //保存到指定的文件夹
                    postedFile.SaveAs(Server.MapPath("upedFile/") + fileName);
                }
            }
            strStatus.Text = strMsg.ToString();
            return true;
        }
        catch (System.Exception error)
        {
            strStatus.Text = error.Message;
            return false;

        }
    }
}

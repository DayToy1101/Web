using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex3_Grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        float fGrade = float.Parse(txtInput.Text);
        int iGrade = (int)(fGrade / 10);
        switch (iGrade)
        {
            case 10:
            case 9:
                lb1Display.Text = "优秀";
                break;
            case 8:
                lb1Display.Text = "良好";
                break;
            case 7:
                lb1Display.Text = "中等";
                break;
            case 6:
                lb1Display.Text = "及格";
                break;
            default:
                lb1Display.Text = "不及格";
                break;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ex4_Choice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lb1Question = new Label
        {
            ID = "lb1Question",
            Text = "1.&nbsp;web服务控件不包括(&nbsp;&nbsp;&nbsp;&nbsp;)."
        };
        plhChoice.Controls.Add(lb1Question);
        RadioButtonList rdoltChoice = new RadioButtonList
        {
            ID = "rdoltChoice"
        };
        rdoltChoice.Items.Add(new ListItem("A.Wizard", "A"));
        rdoltChoice.Items.Add(new ListItem("B.input", "B"));
        rdoltChoice.Items.Add(new ListItem("C.AdRotator", "C"));
        rdoltChoice.Items.Add(new ListItem("D.Calendar", "D"));
        plhChoice.Controls.Add(rdoltChoice);
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        RadioButtonList radoltChoice = (RadioButtonList)plhChoice.FindControl("rdoltChoice");
        lb1Display.Text = "您选择了：" + radoltChoice.SelectedValue;
    }
}
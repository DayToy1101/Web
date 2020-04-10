using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Expt1Site.SubDir
{
    public partial class VirDir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb1Msg.Text = "虚拟测试目录！";
        }
    }
}
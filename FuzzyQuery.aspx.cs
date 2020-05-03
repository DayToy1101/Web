using System;
using System.Collections.Generic;
using System.Data.Linq.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FuzzyQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        MyPetShopDataContext db = new MyPetShopDataContext();
        var results = from c in db.Category where SqlMethods.Like(c.Name,"%"+ txtSearch.Text + "%") select c;
        if (results.Count() != 0)
        {
            gvCategory.DataSource = results;
            gvCategory.DataBind();
        }
        else
        {
            lblMsg.Text = "没有满足条件的数据！";
        }
    }
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("DataManage.aspx");
    }
}
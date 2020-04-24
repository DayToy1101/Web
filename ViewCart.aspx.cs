using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["cart"] == null)
            {
                lblMsg.Text = "没有勾选任何宠物！";
                btnClear.Enabled = false;
            }
            else
            {
                string strPets = Session["cart"].ToString();
                System.Collections.ArrayList pets = new System.Collections.ArrayList();
                int iPosition = strPets.IndexOf(",");
                while (iPosition != -1)
                {
                    string strPet = strPets.Substring(0, iPosition);
                    if (strPet != "")
                    {
                        pets.Add(strPets);
                        strPets = strPets.Substring(iPosition + 1);
                        iPosition = strPets.IndexOf(",");
                    }
                }
                lblMsg.Text = "购物车中现有宠物：";
                chkIsPet.DataSource = pets;
                chkIsPet.DataBind();
            }
        }
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        Session.Remove("cart");
        lblMsg.Text = "没有选购任何宠物！";
        chkIsPet.Visible = false;
        btnClear.Enabled = false;
    }
    protected void btnContinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
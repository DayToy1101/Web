using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtName.Text.Trim() == "")
        {
            Response.Write("<script>alter('用户名不能为空!')</script>");
            return;
        }
        //user userLogin = new user();
        bool isok = false;
        if (rb_admin.Checked)
        {
            string sql = "select * from Role where isnull(Role_Username,'')='" + txtName.Text.Trim() + "' and isnull(Role_Password,'')='" + txtPassword.Text.Trim() + "'and isnull(Role_Name,'')='" + rb_admin.Text + "'";
            string constr = ConfigurationManager.ConnectionStrings["manageConnectionString"].ConnectionString;
            SqlConnection Sqlcon = new SqlConnection(constr);
            Sqlcon.Open();
            SqlCommand sc = new SqlCommand(sql, Sqlcon);
            SqlDataReader myReader = sc.ExecuteReader();
            if (myReader.Read())
            {
                Session["Name"] = myReader["Role_Username"].ToString().Trim();//保存用户名称
                Session["Pass"] = myReader["Role_Password"].ToString().Trim();//保存用户密码
                Session["Role"] = myReader["Role_Name"].ToString().Trim();//保存用户权限.		
                isok = true;
            }
            myReader.Close();
        }
        else
        {
            string sql = "select * from Role where isnull(Role_Username,'')='" + txtName.Text.Trim() + "' and isnull(Role_Password,'')='" + txtPassword.Text.Trim() + "'and isnull(Role_Name,'')='" + rb_user.Text + "'";
            string constr = ConfigurationManager.ConnectionStrings["manageConnectionString"].ConnectionString;
            SqlConnection Sqlcon = new SqlConnection(constr);
            Sqlcon.Open();
            SqlCommand sc = new SqlCommand(sql, Sqlcon);
            SqlDataReader myReader = sc.ExecuteReader();
            if (myReader.Read())
            {
                Session["Name"] = myReader["Role_Username"].ToString().Trim();//保存用户名称
                Session["Pass"] = myReader["Role_Password"].ToString().Trim();//保存用户密码
                Session["Role"] = myReader["Role_Name"].ToString().Trim();//保存用户权限.		
                isok = true;
            }
            myReader.Close();
        }



        if (!isok)
        {
            lbMessage.Text = "用户名称或密码错误，登陆失败!";
            return;
        }
        else
        {
            Response.Redirect("Home.aspx");
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtPassword.Text = "";
        lbMessage.Text = "";
    }
}

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>登录界面</title>
    <link rel="Stylesheet" type="text/css" href="CSS/personal.css" />
    <style type="text/css">
        .auto-style1
        {
            height: 35px;
            width: 250px;
        }
        .auto-style2
        {
            height: 35px;
            width: 72px;
        }
        .auto-style3
        {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        &nbsp;
        <div align="center" style="z-index: 101; left: -1px; width: 100%; position: absolute; top: 289px;
            height: 304px">
            <table align="center" cellpadding="0" cellspacing="0" style="height: 159px;align-items:center;">
                <tr>
                    <td align="center" bgcolor="#66c2de" colspan="3" style="height: 64px">
                        <font size="5"><strong>登录界面</strong></font></td>
                </tr>
                <tr>
                    <td align="center" style="width: 41px; height: 35px">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/role.gif" /></td>
                    <td class="auto-style2">
                        用户角色:&nbsp;</td>
                    <td class="auto-style1">
                        <asp:RadioButton ID="rb_user" runat="server" GroupName="role" Text="普通员工" Checked="True" />
                        <asp:RadioButton ID="rb_admin" runat="server" GroupName="role" Text="管理员" /></td>
                </tr>
                <tr>
                    <td align="center" style="width: 41px; height: 35px">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/user.gif" /></td>
                    <td class="auto-style2">
                        用户名称:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td align="center" style="width: 41px; height: 35px">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/password.gif" /></td>
                    <td class="auto-style2">
                        用户密码:</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td colspan="3" class="auto-style3">
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" style="height: 30px">
                        <asp:Button ID="btnCanel" runat="server" Text="重置" OnClick="btnCancel_Click" Width="68px" Height="34px" />
                         &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click" Width="68px" Height="34px" />
                    </td>
                </tr>
               
                <tr>
                    <td colspan="3" style="height: 21px" align="center">
                        <asp:Label ID="lbMessage" runat="server" Height="27px" Width="358px" ForeColor="Red"></asp:Label></td>
                </tr>
                <tr>
                    <td bgcolor="#66c2de" colspan="3" style="height: 5px">
                    </td>
                </tr>
            </table>
        </div>
        &nbsp;
        <asp:Image ID="Image5" runat="server" Height="264px" ImageUrl="~/Images/OZP.gif"
                Width="100%" />
    </form>
</body>
</html>
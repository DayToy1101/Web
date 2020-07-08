<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EditManager.aspx.cs" Inherits="EditManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>管理人员维护</title>
    <link href="../css/manager.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../js/comm.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <table width="450" height="190" align="center" border="1" bordercolor="#1c5e55" style="border-collapse: collapse">
            <tr>
                <td align="center" height="30">
                    <font style="font-size: 14pt; font-family: 楷体_GB2312" color="blue">管理员<%=PageTitle %></font>
                </td>
            </tr>
            <tr>
                <td height="160">
                    <table width="350" height="150" border="1" cellpadding="0" cellspacing="0" bordercolor="#1c5e55"
                        align="center" style="border-collapse: collapse">
                        <tr>
                            <td width="124" height="25">
                                用户名：</td>
                            <td colspan="2">
                                <input type="text" id="txtUserid" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td height="25">
                                密码：</td>
                            <td colspan="2">
                                <input type="text" id="txtPwd" runat="server" /></td>
                        </tr>
                        <tr>
                            <td height="25">
                                姓名：</td>
                            <td colspan="2">
                                <input type="text" id="txtName" runat="server" /></td>
                        </tr>
                        <tr>
                            <td height="25">
                                上次登陆时间：</td>
                            <td colspan="2">
                                <input type="text" id="txtLastlogintime" runat="server" /></td>
                        </tr>
                        <tr>
                            <td height="25">
                                注册时间：</td>
                            <td colspan="2">
                                <input type="text" id="txtRegtime" runat="server" /></td>
                        </tr>
                        <tr>
                            <td height="25">
                                等级：</td>
                            <td colspan="2">
                                <input type="text" id="txtFlag" runat="server" /></td>
                        </tr>
                        <tr>
                            <td height="25" align="center">
                                <input id="Button1" type="button" name="Submit" runat="server" value="确定" onserverclick="Button1_ServerClick1" />
                            </td>
                            <td width="118" align="center">
                                <input type="button" name="Submit2" runat="server" value="重填" id="Button2" onserverclick="Button1_ServerClick" />
                            </td>
                            <td width="125" align="center">
                                <label id="lblNews" runat="server" enableviewstate="false" style="color: Red;" visible="false">
                                </label>
                                <input type="button" name="Submit3" value="关闭" onclick="window.close();" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

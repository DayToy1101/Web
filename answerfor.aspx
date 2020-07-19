<%@ Page Language="C#" AutoEventWireup="true" CodeFile="answerfor.aspx.cs" Inherits="controls_answerfor" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <LINK rel="stylesheet" type="text/css" href="../css/main.css" />
    <script type="text/javascript">
function checkUser()
{
    if(document.getElementById("comContent").value=="")
    {
        alert("内容不能为空!");
        return false;
    }
}
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="610" border="0" cellspacing="0" cellpadding="0" align="center">
                <tr>
                    <td align="left" align="center">
                        &nbsp;&nbsp;请把你要回复的内容
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="comContent" runat="server" Height="269px" Width="475px" TextMode="MultiLine"></asp:TextBox>&nbsp;
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" Text="确定" OnClientClick="return checkUser()" OnClick="Button1_Click" />
                        <input id="Reset1" type="reset" value="重填" />
                        <input id="Reset2" type="button" value="关闭" onclick="window.close()"/>
                        <label id="lblNews" runat="server" style="display:none"></label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

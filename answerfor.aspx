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
        alert("���ݲ���Ϊ��!");
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
                        &nbsp;&nbsp;�����Ҫ�ظ�������
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
                        <asp:Button ID="Button1" runat="server" Text="ȷ��" OnClientClick="return checkUser()" OnClick="Button1_Click" />
                        <input id="Reset1" type="reset" value="����" />
                        <input id="Reset2" type="button" value="�ر�" onclick="window.close()"/>
                        <label id="lblNews" runat="server" style="display:none"></label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

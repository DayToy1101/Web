<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsEdit.aspx.cs" Inherits="manager_NewsEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../css/manager.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <table width="450" height="190" align="center" border="1" bordercolor="#1c5e55" style="border-collapse: collapse">
            <tr>
                <td align="center" height="30">
                    ϵͳ����<%=PageTitle %>
                </td>
            </tr>
            <tr>
                <td height="160">
                    <table width="350" height="150" border="1" cellpadding="0" cellspacing="0" bordercolor="#1c5e55"
                        align="center" style="border-collapse: collapse">
                        <tr id="div1" runat="server">
                            <td width="124" height="25">
                                ��ţ�</td>
                            <td colspan="2">
                                <input type="text" id="txtUserid" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td height="25">
                                ���⣺</td>
                            <td colspan="2">
                                <input type="text" id="txtName" runat="server" /></td>
                        </tr>
                        <tr>
                            <td height="25">
                                ���ݣ�</td>
                            <td colspan="2">
                                <textarea id="TextArea1" cols="20" rows="2" runat="server"></textarea>
                                </td>
                        </tr>
                        <tr>
                            <td height="25" align="center">
                                <input id="Button1" type="button" name="Submit" runat="server" value="ȷ��" onserverclick="Button1_ServerClick1" />
                            </td>
                            <td width="118" align="center">
                                <input type="button" name="Submit2" runat="server" value="����" id="Button2" onserverclick="Button1_ServerClick" />
                            </td>
                            <td width="125" align="center">
                                <label id="lblNews" runat="server" enableviewstate="false" style="color: Red;" visible="false">
                                </label>
                                <input type="button" name="Submit3" value="�ر�" onclick="window.close();" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

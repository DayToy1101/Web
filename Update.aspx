<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:35%;">
            <tr>
                <td align="right">分类Id:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtCategoryId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">分类名：</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">描述：</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtDescn" runat="server" Height="93px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="修改" />
        <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="返回" />
    </form>
</body>
</html>

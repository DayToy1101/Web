<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="Insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 95px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width:21%;">
            <tr>
                <td align="right" class="auto-style1">分类名：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align ="right" class="auto-style1">描述：</td>
                <td>
                    <asp:TextBox ID="txtDescn" runat="server" Height="82px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="插入" />
        <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="返回" />
    </form>
</body>
</html>

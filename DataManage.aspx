<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataManage.aspx.cs" Inherits="DataManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    分类Id:
        <asp:TextBox ID="txtCategoryId" runat="server" Width="321px">输入分类Id，只用于“修改”和“删除”</asp:TextBox>
    </div>
        <asp:Button ID="btnQueryAll" runat="server" OnClick="btnQueryAll_Click" Text="显示全部" />
        <asp:Button ID="btnFuzzy" runat="server" OnClick="btnFuzzy_Click" Text="模糊查找" />
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="插入" />
        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="修改" />
        <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="删除" />
        <asp:GridView ID="gvCategory" runat="server">
        </asp:GridView>
    </form>
</body>
</html>

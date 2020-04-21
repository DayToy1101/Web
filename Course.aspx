<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Ex4_Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="学年："></asp:Label>
        <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Label ID="Label2" runat="server" Text="学期："></asp:Label>
        <asp:DropDownList ID="ddlTerm" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Label ID="Label3" runat="server" Text="分院："></asp:Label>
        <asp:DropDownList ID="ddlCollege" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        <asp:Label ID="Label4" runat="server" Text="教师："></asp:Label>
        <asp:DropDownList ID="ddlTeacher" runat="server" AutoPostBack="True">
        </asp:DropDownList>
    
    </div>
    </form>
</body>
</html>

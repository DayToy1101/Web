﻿<%@ page language="C#" autoeventwireup="true" inherits="ViewCart, App_Web_kpvmx2tm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
    
    </div>
        <asp:CheckBoxList ID="chkIsPet" runat="server">
        </asp:CheckBoxList>
        <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="清空购物车" />
        <asp:Button ID="btnContinue" runat="server" OnClick="btnContinue_Click" Text="继续购物" />
    </form>
</body>
</html>

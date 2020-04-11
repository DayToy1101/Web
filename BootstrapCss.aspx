<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BootstrapCss.aspx.cs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Style/Style.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/Style.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <form id="form1" runat="server">
    <header class="header">
        <asp:Image ID="imgLogo" runat="server" ImageUrl="~/Images/Logo.gif" />
        <ul class="nav nav-pills">
            <li class="navDark">
                <asp:LinkButton ID="lnkbtnDefault" runat="server" ForeColor="White">首页</asp:LinkButton>
            </li>
            <li class="navDark">
                <asp:LinkButton ID="lnkbtnRegister" runat="server" ForeColor="White">注册</asp:LinkButton>
            </li>
            <li class="navDark">
                <asp:LinkButton ID="lnkbtnLogin" runat="server" ForeColor="White">登录</asp:LinkButton>
            </li>
            <li class="navDark">
                <asp:LinkButton ID="lnkbtnCart" runat="server" ForeColor="White">购物车</asp:LinkButton>
            </li>
            <li class="navDark">
                <asp:LinkButton ID="lnkbtnSiteMap" runat="server" ForeColor="White">网站地图</asp:LinkButton>
            </li>
        </ul>
        <div>登录状态</div>
    </header>
        <nav class="sitemap">您的位置：</nav>
    </form>
</body>
</html>

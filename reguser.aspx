<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reguser.aspx.cs" Inherits="manager_reguser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../css/manager.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="div0" style="text-align: center">
                <div style="text-align: center">
                    <table border="1" bordercolor="#1c5e55" style="border-collapse: collapse; width: 744px;
                        height: 400px;">
                        <tr>
                            <td colspan="4" style="height: 24px" background="images/bg2.gif">
                                <span style="font-size: 12pt; font-family: 楷体_GB2312">注册会员管理</span> &nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="26" style="width: 100px">
                                &nbsp;</td>
                            <td style="width: 250px">
                                <asp:TextBox ID="TextBox1" runat="server" Height="15px"></asp:TextBox>
                            </td>
                            <td style="width: 250px">
                                <select id="Select1" runat="server" style="height: 20px">
                                    <option selected="selected" value="txtUserid">用户名</option>
                                </select>
                            </td>
                            <td style="width: 100px">
                                &nbsp;<asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" Height="20px" /></td>
                        </tr>
                        <tr>
                            <td colspan="4" height="350px" valign="top">
                                <table align="center" border="1" bordercolor="#1c5e55" style="border-collapse: collapse;">
                                    <tr>
                                        <td align="center" valign="top">
                                            单击相应的删除按钮执行相应的删除操作
                                            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                                                AutoGenerateColumns="False" DataKeyNames="rid" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                                                AllowPaging="True" Width="700px">
                                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" BorderColor="#00C000" />
                                                <Columns>
                                                <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
                                                    <asp:BoundField DataField="pwd" HeaderText="密码" SortExpression="pwd" />
                                                    <asp:BoundField DataField="realname" HeaderText="姓名" SortExpression="realname" />
                                                    <asp:BoundField DataField="lastlogintime" HeaderText="上次登陆时间" SortExpression="lastlogintime" />
                                                    <asp:BoundField DataField="times" HeaderText="上线次数" SortExpression="times" />
                                                   
                                                    <asp:BoundField DataField="flag" HeaderText="用户类别" SortExpression="flag" />
                                                    <asp:CommandField ShowSelectButton="True" SelectText="删除" HeaderText="删除" />
                                                </Columns>
                                                <RowStyle BackColor="#E3EAEB" />
                                                <EditRowStyle BackColor="#7C6F57" />
                                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                <AlternatingRowStyle BackColor="White" />
                                                <PagerTemplate>
                                                </PagerTemplate>
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" style="height: 25px">
                                            <asp:Label ID="lblPageCount" runat="server"></asp:Label>
                                            <asp:Label ID="lblCurrentIndex" runat="server"></asp:Label>
                                            <asp:LinkButton ID="btnFirst" OnClick="PageButtonClick" runat="server" Font-Name="verdana"
                                                CommandArgument="0">最首页</asp:LinkButton>
                                            <asp:LinkButton ID="btnPrev" OnClick="PageButtonClick" runat="server" CommandArgument="prev">前一页</asp:LinkButton>
                                            <asp:LinkButton ID="btnNext" OnClick="PageButtonClick" runat="server" CommandArgument="next">下一页</asp:LinkButton>
                                            <asp:LinkButton ID="btnLast" OnClick="PageButtonClick" runat="server" CommandArgument="last">最后页</asp:LinkButton></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                </div>
            </div>
        </div>
        <table>
            <tr>
                <td>
                    <input id="freshflag" name="freshflag" enableviewstate="false" type="text" style="display: none;" />
                    <label id="Label1" runat="server">
                    </label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

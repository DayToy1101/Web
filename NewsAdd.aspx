<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewsAdd.aspx.cs" Inherits="manager_NewsAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <link href="../css/manager.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
    function Winopen()
    {
        window.open("NewsEdit.aspx?flag=0","new","height=400,width=500,top=200,left=200,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no");
    }
    </script>

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
                                <span style="font-size: 12pt; font-family: 楷体_GB2312">系统新闻管理</span> &nbsp;&nbsp;</td>
                        </tr>
                        <tr>
                            <td height="26" style="width: 100px">
                                <input id="Button2" type="button" value="新增" style="height: 20px" onclick="Winopen();" />
                            </td>
                            <td style="width: 250px">
                                &nbsp;</td>
                            <td style="width: 250px">
                                &nbsp;</td>
                            <td style="width: 100px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4" height="350px" valign="top">
                                <table align="center" border="1" bordercolor="#1c5e55" style="border-collapse: collapse;">
                                    <tr>
                                        <td align="center" valign="top" style="height: 119px">
                                            单击系统新闻编号执行相应的更新操作&nbsp;<br />
                                            <asp:GridView ID="GridView1" runat="server" Width="700px" AutoGenerateColumns="False"
                                               AllowPaging="True" DataKeyNames="nid"  CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                                                <Columns>
                                                <asp:HyperLinkField DataTextField="nid" DataTextFormatString="{0}" DataNavigateUrlFields="nid"
                                                        DataNavigateUrlFormatString="NewsEdit.aspx?flag=1&amp;nid={0}" HeaderText="系统新闻编号"
                                                        Target="_blank" />
                                                    <asp:BoundField DataField="title" HeaderText="新闻标题" SortExpression="title" />
                                                    <asp:CommandField HeaderText="删除" ShowHeader="True" ShowSelectButton="True" SelectText="删除" />
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
                                            &nbsp;
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

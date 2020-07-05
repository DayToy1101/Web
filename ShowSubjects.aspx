<%@ Page Language="C#" MasterPageFile="~/Defalult.master" AutoEventWireup="true"
    CodeFile="ShowSubjects.aspx.cs" Inherits="webpart_Subjects_ShowSubjects" Title="科目分类浏览" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript" src="../../js/calendar.js"></script>

    <script type="text/javascript" src="../../js/usecalendar.js"></script>

    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="176" valign="top">
                <table width="176" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="5">
                        </td>
                    </tr>
                    <tr>
                        <td height="20" background="/code/images/bg.gif" width="176px" style="height: 20px;">
                            <table height="20" width="176" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid;">
                                <tr>
                                    <td valign="bottom" height="20" background="/code/images/bg.gif" width="176px" style="height: 20px;">
                                        <span style="font-size: 10pt">&nbsp;&nbsp;科&nbsp;目&nbsp;分&nbsp;类</span>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">
                            <table width="176" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid;">
                                <tr>
                                    <td valign="top">
                                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatDirection="Horizontal"
                                            DataSourceID="SqlDataSource1" Width="175px">
                                            <ItemTemplate>
                                                <table align="left">
                                                    <tr>
                                                        <td align="left">
                                                            &nbsp;<a href="ShowSubjects.aspx?sortid=<%# Eval("sortid", "{0}") %>&sortname=<%# Eval("sortname", "{0}") %>"
                                                                target="_self">
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("sortname", "{0}") %>'></asp:Label></a></td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString1 %>"
                                            SelectCommand="SELECT [sortid],[sortname] FROM [sort]"></asp:SqlDataSource>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td background="/code/images/bg.gif" width="176px" style="height: 20px;">
                            <table height="20" width="176" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid;">
                                <tr>
                                    <td valign="bottom" height="20" background="/code/images/bg.gif" width="176px" style="height: 20px;">
                                        <span style="font-size: 10pt">&nbsp;&nbsp;友&nbsp;情&nbsp;连&nbsp;接</span>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <table width="176" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid;
                                border-bottom: #0074c6 1px solid;">
                                <tr>
                                    <td align="center" class="td1" height="60" valign="bottom">
                                        <a href="http://www.baidu.com" target="_blank">
                                            <img border="0" src='http://www.baidu.com/img/logo-yy.gif'></a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="7">
                &nbsp;
            </td>
            <td width="610">
                <table width="610" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top" style="padding-top: 5px;">
                            <table width="610" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td height="13">
                                        <img src="/code/images/tabletop.gif" width="610" height="13" /></td>
                                </tr>
                                <tr>
                                    <td height="550" background="/code/images/tablemiddle.gif" align="center">
                                        <table width="600" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td align="left" height="50px" style="padding-left: 0px">
                                                    <span style="font-size: 14pt"><span style="font-family: 幼圆">
                                                        <%=Request["sortname"]%>
                                                        课程列表</span></span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" height="400px" valign="top">
                                                    <hr size="1px" color="#0074c6" /><br /><br />
                                                    <asp:DataList ID="DataList2" runat="server" DataKeyField="sid" DataSourceID="SqlDataSource2"
                                                        RepeatColumns="2" Width="400px">
                                                        <ItemTemplate>
                                                            <table align="left">
                                                                <tr>
                                                                    <td align="left">
                                                                        &nbsp;<a href="Subject.aspx?flag=1&sid=<%# Eval("sid", "{0}") %>&name=<%# Eval("name", "{0}") %>" target="_self">
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("name", "{0}") %>'></asp:Label></a></td>
                                                                </tr>
                                                            </table>
                                                        </ItemTemplate>
                                                    </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString1 %>"
                                                        SelectCommand="SELECT [name], [sid], [sortid] FROM [subject] WHERE ([sortid] = @sortid)">
                                                        <SelectParameters>
                                                            <asp:QueryStringParameter DefaultValue="" Name="sortid" QueryStringField="sortid"
                                                                Type="Int32" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="13">
                                        <img src="/code/images/tabledi.gif" width="610" height="13" /></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td width="7">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

<%@ Page Language="C#" MasterPageFile="~/Defalult.master" AutoEventWireup="true"
    CodeFile="Subject.aspx.cs" Inherits="webpart_Subjects_Subject" Title="��Ŀ��ϸ��Ϣ" %>

<%@ Register TagPrefix="subject" TagName="download" Src="~/webpart/Subjects/contrls/download.ascx" %>
<%@ Register TagPrefix="subject" TagName="OutLIne" Src="~/webpart/Subjects/contrls/OutLine.ascx" %>
<%@ Register TagPrefix="subject" TagName="homewokes" Src="~/webpart/Subjects/contrls/homeworksl.ascx" %>
<%@ Register TagPrefix="subject" TagName="cankao" Src="~/webpart/Subjects/contrls/cankao.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="800" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="176" valign="top">
                <table width="176" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="height: 5px;">
                        </td>
                    </tr>
                    <tr>
                        <td width="176px" valign="top" class="td1">
                            <table bgcolor="#ceebff" width="176" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid;
                                border-top: #0074c6 1px solid; border-bottom: #0074c6 1px solid;">
                                <tr>
                                    <td width="176px" bgcolor="#a7dbff" align="left" valign="middle" height="40px">
                                        <span style="font-size: 14pt"><span style="font-family: ��Բ">&nbsp;<%=Request["name"] %>
                                        </span></span>
                                    </td>
                                </tr>
                            </table>
                            <asp:DataList ID="DataList2" runat="server" DataKeyField="sid" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <table bgcolor="#ceebff" width="175" border="0" cellspacing="0" cellpadding="0" style="border-right: #0074c6 1px solid;">
                                        <tr>
                                            <td height="50" style="width: 175px">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td background="/images/bg2.gif" height="24" align="center" style="width: 175px">
                                                <a href="Subject.aspx?flag=1&sid=<%# Eval("sid")  %>&name=<%# Eval("name")  %>">��ѧ���</a></td>
                                        </tr>
                                        <tr>
                                            <td style="height: 50px;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td background="images/bg2.gif" height="24" align="center" style="width: 175px">
                                                <a href="Subject.aspx?flag=2&sid=<%# Eval("sid")  %>&name=<%# Eval("name")  %>">�γ���ҵ</a></td>
                                        </tr>
                                        <tr>
                                            <td height="50"">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td background="/images/bg2.gif" height="24" align="center" style="width: 175px">
                                                <a href="Subject.aspx?flag=3&sid=<%# Eval("sid")  %>&name=<%# Eval("name")  %>">�ο��Ƽ�</a></td>
                                        </tr>
                                        <tr>
                                            <td height="50">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td background="/images/bg2.gif" height="24" align="center" style="width: 175px">
                                                <a href="Subject.aspx?flag=4&sid=<%# Eval("sid")  %>&name=<%# Eval("name")  %>">��Դ����</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td height="50">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td background="/images/bg2.gif" height="24" align="center" style="width: 175px">
                                                <a href="Subject.aspx?flag=5&sid=<%# Eval("sid")  %>&name=<%# Eval("name")  %>">ʹ�ð���</a></td>
                                        </tr>
                                        <tr>
                                            <td height="50">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString1 %>"
                                SelectCommand="SELECT [sid], [name], [sortid] FROM [subject] WHERE ([sid] = @sid)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="sid" QueryStringField="sid" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <tr>
                            <td height="20">
                                <img src="/images/��վ��ҳ_26.gif" width="176" height="20" alt="" /></td>
                        </tr>
                    <tr>
                        <td valign="top">
                            <table width="176" border="0" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid;
                                border-bottom: #0074c6 1px solid;">
                                <tr>
                                    <td align="center" class="td1" style="height: 200px">
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
                                        <img src="/images/tabletop.gif" width="610" height="13" /></td>
                                </tr>
                                <tr>
                                    <td height="700" background="/images/tablemiddle.gif" align="center">
                                        <div id="div1" runat="server">
                                            <subject:OutLIne ID="Download2" runat="server" />
                                        </div>
                                        <div id="div2" runat="server">
                                            <subject:homewokes ID="Download3" runat="server" />
                                        </div>
                                        <div id="div3" runat="server">
                                            <subject:cankao ID="Download4" runat="server" />
                                        </div>
                                        <div id="div4" runat="server">
                                            <subject:download ID="Download1" runat="server" />
                                        </div>
                                        <div id="div5" runat="server">
                                            ʹ�ð������ڽ�����...
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="13">
                                        <img src="/images/tabledi.gif" width="610" height="13" /></td>
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

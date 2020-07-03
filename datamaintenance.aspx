<%@ Page Language="C#" MasterPageFile="~/Defalult.master" AutoEventWireup="true"
    CodeFile="datamaintenance.aspx.cs" Inherits="datamaintenance" Title="教师个人资料维护" %>
<%@ Register TagPrefix="teacher" TagName="Answerforstudent" Src="~/controls/Answerforstudent.ascx" %>
<%@ Register TagPrefix="teacher" TagName="questioni" Src="~/controls/questioni.ascx" %>
<%@ Register TagPrefix="teacher" TagName="upload" Src="~/controls/upload.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript" src="/code/js/calendar.js"></script>

    <script type="text/javascript" src="/code/js/usecalendar.js"></script>

    <form id="form1" runat="server">
        <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" runat="server">
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
                                            <span style="font-size: 14pt"><span style="font-family: 幼圆">&nbsp;教师主页 </span></span>
                                        </td>
                                    </tr>
                                </table>
                                <table bgcolor="#ceebff" width="176" border="0" cellspacing="0" cellpadding="0" style="border-right: #0074c6 1px solid;">
                                    <tr>
                                        <td height="50" style="width: 175px">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td background="/code/images/bg2.gif" height="24" align="center" style="width: 175px">
                                            <a href="datamaintenance.aspx?flag=1">个人资料维护</a></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td background="/code/images/bg2.gif" height="24" align="center" style="width: 175px">
                                            <a href="datamaintenance.aspx?flag=2">科目试题维护</a></td>
                                    </tr>
                                    <tr>
                                        <td height="50"">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td background="/code/images/bg2.gif" height="24" align="center" style="width: 175px">
                                            <a href="datamaintenance.aspx?flag=3">资源上传</a></td>
                                    </tr>
                                    <tr>
                                        <td height="50">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td background="/code/images/bg2.gif" height="24" align="center" style="width: 175px">
                                            <a href="datamaintenance.aspx?flag=4">回复咨询</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="50">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="50">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <tr>
                                <td height="20">
                                    <img src="/code/images/网站首页_26.gif" width="176" height="20" alt="" /></td>
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
                <td style="width: 610px" valign="top">
                    <table width="610" border="0" cellpadding="0" cellspacing="0" runat="server">
                        <tr>
                            <td valign="top" style="padding-top: 5px;">
                                <table width="610" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td height="13" style="width: 611px">
                                            <img src="/code/image/tabletop.gif" width="610" height="13" alt="" /></td>
                                    </tr>
                                    <tr>
                                        <td height="550" background="/code/image/tablemiddle.gif" align="center" style="width: 611px"
                                            valign="top">
                                            <div id="div1" runat="server">
                                                <table width="600" border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td align="left" style="padding-left: 0px; height: 49px;">
                                                            <span style="font-size: 14pt">&nbsp;&nbsp;教&nbsp;师&nbsp;基&nbsp;本&nbsp;资&nbsp;料&nbsp;与&nbsp;维&nbsp;护;
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 500px" valign="top">
                                                            <asp:DataList ID="DataList1" runat="server" CellPadding="4" Width="580px" Height="200px"
                                                                DataSourceID="SqlDataSource1" ForeColor="#333333" OnEditCommand="DataList1_EditCommand"
                                                                OnUpdateCommand="DataList1_UpdateCommand" OnCancelCommand="DataList1_CancelCommand">
                                                                <ItemTemplate>
                                                                    <table width="100%" cellspacing="5" cellpadding="5" border="1">
                                                                        <tr>
                                                                            <td width="10%" align="center">
                                                                                姓名</td>
                                                                            <td align="center" style="width: 15%">
                                                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("username") %>'></asp:Label></td>
                                                                            <td width="10%" align="center">
                                                                                邮政编码</td>
                                                                            <td width="15%" align="center">
                                                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("postcode") %>'></asp:Label></td>
                                                                            <td width="10%" align="center">
                                                                                出生日期</td>
                                                                            <td width="15%" align="center">
                                                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("birthday") %>'></asp:Label></td>
                                                                            <td width="25%" align="center" rowspan="3">
                                                                                照<asp:Label ID="Label10" runat="server" Text='<%# Eval("picture") %>'></asp:Label>片</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td width="15%" align="center">
                                                                                性别</td>
                                                                            <td align="center" style="width: 15%">
                                                                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("sex") %>'></asp:Label></td>
                                                                            <td width="15%" align="center">
                                                                                学位</td>
                                                                            <td width="15%" align="center">
                                                                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("degree") %>'></asp:Label></td>
                                                                            <td width="10%" align="center">
                                                                                地址</td>
                                                                            <td width="15%" align="center">
                                                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("adress") %>'></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td width="15%" align="center">
                                                                                联系方式</td>
                                                                            <td align="center" style="width: 15%">
                                                                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("mail") %>'></asp:Label></td>
                                                                            <td width="15%" align="center">
                                                                                职称</td>
                                                                            <td width="15%" align="center">
                                                                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                                                                            <td width="15%" align="center">
                                                                                省份</td>
                                                                            <td width="15%" align="center">
                                                                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("province") %>'></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td width="15%" align="center">
                                                                                简介</td>
                                                                            <td width="85%" align="center" colspan="6">
                                                                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("discribe") %>'></asp:Label>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="edit">编辑</asp:LinkButton>
                                                                </ItemTemplate>
                                                                <EditItemTemplate>
                                                                    <table>
                                                                        <tr>
                                                                            <td>
                                                                                姓名
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:Label ID="Label12" runat="server" Text='<%# Eval("username") %>'></asp:Label></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                邮政编码
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("postcode") %>'></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                出生日期
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("birthday") %>'></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                性别
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("sex") %>'></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                学位
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("degree") %>'></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                地址
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("adress") %>'></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                联系方式
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("mail") %>'></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                省份
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("province") %>'></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                简介
                                                                            </td>
                                                                            <td style="width: 89px" colspan="2">
                                                                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Eval("discribe") %>'></asp:TextBox></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="height: 113px">
                                                                                照片
                                                                            </td>
                                                                            <td style="width: 55px; height: 113px">
                                                                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Eval("picture") %>' Height="128px"></asp:TextBox></td>
                                                                            <td width="34" style="height: 113px">
                                                                                <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;</td>
                                                                        </tr>
                                                                    </table>
                                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="update">保存</asp:LinkButton>
                                                                    &nbsp; &nbsp;
                                                                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="cancel">取消</asp:LinkButton>
                                                                </EditItemTemplate>
                                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                <AlternatingItemStyle BackColor="White" />
                                                                <ItemStyle BackColor="#EFF3FB" />
                                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                            </asp:DataList>
                                                            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString1 %>"
                                                                SelectCommand="SELECT * FROM [reguser] WHERE ([username] = @username)" DeleteCommand="DELETE FROM [reguser] WHERE [rid] = @rid)"
                                                                UpdateCommand="UPDATE [reguser] SET [username] = @username,[postcode]=@postcode, [sex] = @sex, [birthday] = @birthday, [discribe] = @discribe, [picture] = @picture, [adress] = @adress, [mail] = @mail WHERE [rid] = @rid">
                                                                <SelectParameters>
                                                                    <asp:SessionParameter Name="username" SessionField="username" Type="String" />
                                                                </SelectParameters>
                                                                <DeleteParameters>
                                                                    <asp:Parameter Name="rid" Type="Int32" />
                                                                </DeleteParameters>
                                                                <UpdateParameters>
                                                                    <asp:Parameter Name="postcode" Type="String" />
                                                                    <asp:Parameter Name="province" Type="String" />
                                                                    <asp:Parameter Name="degree" Type="String" />
                                                                    <asp:Parameter Name="username" Type="String" />
                                                                    <asp:Parameter Name="sex" Type="String" />
                                                                    <asp:Parameter Name="birthday" Type="DateTime" />
                                                                    <asp:Parameter Name="discribe" Type="String" />
                                                                    <asp:Parameter Name="picture" Type="Object" />
                                                                    <asp:Parameter Name="adress" Type="String" />
                                                                    <asp:Parameter Name="mail" Type="String" />
                                                                    <asp:Parameter Name="rid" Type="Int32" />
                                                                </UpdateParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div id="div2" runat="server">
                                                <teacher:questioni ID="Download3" runat="server" />
                                            </div>
                                            <div id="div3" runat="server">
                                                <teacher:upload ID="Download1" runat="server" />
                                            </div>
                                            <div id="div4" runat="server">
                                            <teacher:Answerforstudent ID="Upload2" runat="server" />
                                            </div>
                                            <div id="div5" runat="server">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="13" style="width: 611px">
                                            <img src="/code/image/tabledi.gif" width="610" height="14" alt="" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

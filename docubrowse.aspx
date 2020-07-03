<%@ Page Language="C#" AutoEventWireup="true" CodeFile="docubrowse.aspx.cs" Inherits="docubrowse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
        <div>
            <table width="740" border="0" background="image/bkhead.jpg" height="180">
                <tr>
                    <td width="21">
                        &nbsp;</td>
                    <td width="526">
                        <h2>
                            <font color="#FFFFFF">网上教学资源中心</font></h2>
                    </td>
                    <td width="193" align="center">
                    </td>
                </tr>
            </table>
            <table width="740" border="0" cellpadding="0" cellspacing="0" bgcolor="#33ccff">
                <tr bgcolor="#33ccff">
                    <td width="24%" bgcolor="#636E81" style="height: 37px">
                    </td>
                    <td align="center" bgcolor="#636E81" style="height: 37px; width: 76%;">
                        <table border="0" cellpadding="0" cellspacing="0" width="464">
                            <tr>
                                <td style="height: 18px">
                                    <a href="default.aspx">
                                        </a></td>
                                <td style="height: 18px">
                                    <span style="font-size: 10pt; color: #ffffff"><strong><a href="/code/Default.aspx">
                                首页</a></strong></span></td>
                                <td style="height: 18px">
                                    <span style="font-size: 10pt; color: #ffffff"><strong></strong></span></td>
                                <td style="height: 18px">
                                    </td>
                                <td style="height: 18px">
                                    <a href="infoupload.aspx">
                                        </a></td>
                                <td style="height: 18px; width: 30px;">
                                    </td>
                                <td style="height: 18px">
                                    <a href="">
                                        </a></td>
                                <td style="height: 18px">
                                    </td>
                                <td style="height: 18px">
                                    <a href="messageboard.htm" target="_blank">
                                        </a></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <table width="740" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td bgcolor="#7C8AA4" style="height: 1px">
                    </td>
                </tr>
            </table>
            <table width="740" border="0" cellpadding="0" cellspacing="0" style="height: 700px">
                <tr>
              
                    <td valign="top" style="width: 167px; height: 988px;">
                        <table width="176" border="0" cellpadding="0" cellspacing="0" bgcolor="#479AC7">
                            <tr>
                                <td height="18" style="width: 179px">
                                    <img src="images/网站首页_12.gif" width="176" height="18" alt="" /></td>
                            </tr>
                            <tr>
                                <td height="200" style="width: 179px">
                              
                                        <table id="table1" width="176" height="100" cellpadding="0" bgcolor="#479AC7" cellspacing="0"
                                            runat="server" style="border-right: #0074c6 1px solid">
                                       
                                            <tr>
                                                <td  colspan="3" style="width: 174px">
                                                    <table width="176" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#479AC7">
                                                        <tr>
                                                            <td colspan="2" height="20">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" style="width: 175px; height: 60px;">
                                                                <span style="font-size: 10pt; color: White">尊敬的客户:<br>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;您好！ 您已经成功登录<br>
                                                                    本网站</span>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <table>
                                                        <tr>
                                                            <td colspan="2" height="20" style="width: 100px">
                                                            </td>
                                                            <td height="20" class="unnamed1" align="center" style="width: 75px">
                                                                <div align="center">
                                                                    &nbsp;</div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                        </table>
                                        <table id="table2" width="176" height="100" cellpadding="1" style="border-right: #0074c6 1px solid"
                                            cellspacing="1" runat="server">
                                           <%-- <tr>
                                                <td colspan="2" height="50px;">
                                                    &nbsp;&nbsp;</td>
                                            </tr>--%>
                                            <tr>
                                                <td colspan="2" style="font-size: 10pt; color: white">
                                                    &nbsp;&nbsp;欢迎你!
                                                    <%=Session["txtUserid"]%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="font-size: 10pt; color: white">
                                                    &nbsp;&nbsp;上次登陆时间<br />
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=Session["latLogintime"] %></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" align="center">
                                                    <input type="text" id="txtTime" runat="server" style="width: 130px; display: none;" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="font-size: 10pt; color: white; height: 21px">
                                                    &nbsp; 别忘了常来看看啊！</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    &nbsp;
                                                                    <img src="image/index_342.gif" width="51" height="19" style="cursor: hand" runat="server" id="IMG1"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                </td>
                                            </tr>
                                        </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="20" style="width: 179px">
                                    <img src="images/网站首页_20.gif" width="176" height="20" alt="" /></td>
                            </tr>
                            <tr>
                                <td height="200" style="width: 179px; font-size: 10pt; color: white;">
                                    <table width="176" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid">
                                        <tr>
                                            <td class="td1">
                                                <div id="ListContent" style="width: 100%;">
                                                    <label id="lblContent" enableviewstate="false" runat="server">
                                                    </label>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td height="20" style="width: 179px">
                                    <img src="images/网站首页_26.gif" width="176" height="20" alt="" /></td>
                            </tr>
                            <tr>
                                <td class="td1" style="width: 179px">
                                    <table width="176" height="370px" cellpadding="0" cellspacing="0" style="border-right: #0074c6 1px solid;
                                        border-bottom: #0074c6 1px solid;">
                                        <tr>
                                            <td height="10">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="td1" height="60" valign="top" title="中国IT实验室">
                                                <a href="http://www.chinaitlab.com/" target="_blank">
                                                    <img src="images/link/chinaitlab.gif" border="0" /></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="td1" height="60" valign="top" title="新东方学外语">
                                                <a href="http://it.neworiental.org/" target="_blank">
                                                    <img border="0" src="images/link/xdf.gif" /></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="td1" height="60" valign="top" title="教育部考试中心">
                                                <a href="http://www.neea.edu.cn/" target="_blank">
                                                    <img src="images/link/neea.gif" border="0" /></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="td1" height="60" valign="top" title="全国计算机职业技能考试">
                                                <a href="http://www.nit-pro.org/" target="_blank">
                                                    <img src="images/link/nitprologo.gif" border="0" /></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="td1" height="60" valign="top" title="中国软件咨询站">
                                                <a href="http://www.software100.cn/" target="_blank">
                                                    <img src="images/link/logo_software100.gif" border="0" /></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="td1" height="60" valign="top" title="worksoft">
                                                <a href="http://www.worksoft.com.cn/" target="_blank">
                                                    <img src="images/link/wensi-logo.gif" border="0" /></a>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td height="" style="padding-bottom: 3%; vertical-align: top; padding-top: 3%;
                        text-align: center; width: 76%; height: 988px;">
                        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Height="33px" Text="精选文章"
                            Width="188px"></asp:Label><div id="Div4" style="text-align: right" runat="server">
                                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="Default.aspx">返回主页</asp:HyperLink>&nbsp;&nbsp;
                            </div>
                        <div id="Div8" style="text-align: left" runat="server">
                            &nbsp; &nbsp;&nbsp;
                        </div>
                        <div id="div2" runat="server" style="width: 100%;height:683px; border-bottom: #6597c8 thin solid;
                          text-align: left" >
                            &nbsp;&nbsp;
                            <br />
                            <br />
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="border-bottom: #0074c6 1px solid;">
                                <tr>
                                    <td width="50" align="center">
                                    </td>
                                    <td width="70" align="center">
                                        序号
                                    </td>
                                  
                                    <td width="150" align="center">
                                        文件名
                                    </td>
                                    <td width="90" align="center">
                                        文件大小
                                    </td>
                                    <td width="100" align="center">
                                        下载次数
                                    </td>
                                    <td width="140" align="center">
                                        上传时间
                                </tr>
                            </table>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlineConnectionString1 %>"
                                SelectCommand="SELECT [fid], [uploadtime], [fsize], [filename], [downnum], [sid],[filepath] FROM [files] where (filename like '%txt'or filename like '%zip'or filename like '%rar' or filename like '%htm' or filename like '%doc' or filename like '%html'or filename like '%ppt' or filename like '%gif' or filename like '%jpg')">
                            </asp:SqlDataSource>
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="fid"
                                CellPadding="4" ForeColor="#333333">
                                <ItemTemplate>
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0">
                                        <tr>
                                            <td width="70" align="left">
                                                <a href="<%# Eval("filepath") %><%#Eval("filename") %>">
                                                    阅读</a></td>
                                            <td width="160" align="left">
                                                <a href="/webpart/Subjects/Download.aspx?flag=1&filepath=<%# Eval("filepath", "{0}") %>&filename=<%# Eval("filename", "{0}") %>&fid=<%# Eval("fid", "{0}") %>">
                                                    <asp:Label ID="filenameLabel" runat="server" Text='<%# Eval("filename") %>'></asp:Label></td>
                                            <td width="90" align="left">
                                                <asp:Label ID="fsizeLabel" runat="server" Text='<%# Eval("fsize") %>'></asp:Label>KB</td>
                                            <td width="100" align="left">
                                                <asp:Label ID="downnumLabel" runat="server" Text='<%# Eval("downnum") %>'></asp:Label></td>
                                            <td width="140" align="left">
                                                <asp:Label ID="uploadtimeLabel" runat="server" Text='<%# Eval("uploadtime") %>'></asp:Label></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        
                        <div id="Div5" runat="server">
                            &nbsp;</div>
                    </td>
                </tr>
            </table>
            <br />
                            <table width="800px" border="0" align="center" cellpadding="0" cellspacing="0" style="border-top: #0074c6 1px solid;">
                                <tr>
                                    <td class="td1" style="height: 20px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" style="height: 60px">
                                        联系我们 &nbsp; &nbsp; &nbsp; 网站说明 &nbsp; &nbsp;&nbsp; &nbsp;站点地图
                                        <br />
                                        <br />
                                        www.513448.com<br />
                                        <br />
                                        中华人民共和国教育部
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 13px">
                                        &nbsp;</td>
                                </tr>
                            </table>
        </div>
        </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GroupValidation.aspx.cs" Inherits="Ex5_GroupValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table style="width: 40%; height: 82px;text-align:right;">
            <tr>
                <td>用户名：</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="请输入用户名！" SetFocusOnError="True" ValidationGroup="groupName">*</asp:RequiredFieldValidator>
                    <asp:Button ID="btnValidateName" runat="server" Text="用户名是否可用" ValidationGroup="groupName" OnClick="btnValidateName_Click" />
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="请输入密码！" SetFocusOnError="True" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>确认密码：</td>
                <td>
                    <asp:TextBox ID="txtPasswordAgain" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvPasswordAgain" runat="server" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="请输入确认密码！" SetFocusOnError="True" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordAgain" Display="Dynamic" ErrorMessage="密码与确认密码不一致！" SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>生日：</td>
                <td>
                    <asp:TextBox ID="txtBirthday" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvBirthday" runat="server" ControlToValidate="txtBirthday" Display="Dynamic" ErrorMessage="请输入生日！" SetFocusOnError="True" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvBirthday" runat="server" ControlToValidate="txtBirthday" Display="Dynamic" ErrorMessage="日期应该在1900-1-1到2020-1-1之间" MaximumValue="2020-1-1" MinimumValue="1900-1-1" SetFocusOnError="True" Type="Date"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>电话号码：</td>
                <td>
                    <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvTelephone" runat="server" ControlToValidate="txtTelephone" Display="Dynamic" ErrorMessage="请输入电话号码！" SetFocusOnError="True" ValidationGroup="groupSubmit">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revTelephone" runat="server" ControlToValidate="txtTelephone" Display="Dynamic" ErrorMessage="电话号码格式应为021-66798304" SetFocusOnError="True" ValidationExpression="\d{3}-\d{8}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>身份证号：</td>
                <td>
                    <asp:TextBox ID="txtIdentity" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvIdrntity" runat="server" ControlToValidate="txtIdentity" Display="Dynamic" ErrorMessage="请输入身份证号！" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="csvIdentity" runat="server" ControlToValidate="txtIdentity" Display="Dynamic" ErrorMessage="身份证号错误！" SetFocusOnError="True" OnServerValidate="csvIdentity_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>

        </table>
    </div>
         <asp:Button ID="btnSubmit" runat="server" Text="确定" OnClick="btnSubmit_Click" ValidationGroup="groupSubmit" />
        <asp:Label ID="lblMsg" runat="server"></asp:Label>
        <asp:ValidationSummary ID="vsSubmit" runat="server" ShowMessageBox="True" Display="Dynamic" ShowSummary="False" />
        <asp:ValidationSummary ID="vsName" runat="server" ShowMessageBox="True" Display="Dynamic" ShowSummary="False" ValidationGroup="groupName" />
    </form>
</body>
</html>

<%@ Page Language="C#" MasterPageFile="~/Defalult.master" AutoEventWireup="true"
    CodeFile="Uplosd.aspx.cs" Inherits="teacher_Uplosd" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">
    function addFileControl()
    {
    	var str = '<br/><INPUT type="file" NAME="File" id="File">'
    	document.getElementById('FileCollection').insertAdjacentHTML("beforeEnd",str)
    }
    </script>

    <form id="form1" runat="server">
        <table width="600" border="0" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td height="25" colspan="3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td height="25" colspan="3">
                    <P id="FileCollection"><INPUT type="file" name="File" id="File">
			</P></td>
            </tr>
            <tr>
                <td width="200" height="25">
                    <input name="button" type="button" onclick="addFileControl()" value="增加(File)"></td>
                <td width="200">
                    <asp:Button ID="Upload" runat="server" Text="上传" Width="56px" OnClick="Upload_Click">
                    </asp:Button></td>
                <td width="200">
                    <input name="button2" type="button" style="width: 56px; height: 24px" onclick="this.form.reset()"
                        value="重置"></td>
            </tr>
            <tr>
                <td height="25" colspan="3">
                    <asp:Label ID="strStatus" runat="server" BorderColor="White" BorderStyle="None" Width="500px"
                        Font-Size="9pt" Font-Bold="True" Font-Names="宋体"></asp:Label></td>
            </tr>
        </table>
    </form>
</asp:Content>

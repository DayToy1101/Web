﻿<%@ page language="C#" autoeventwireup="true" inherits="Chat, App_Web_rapgqhi4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src ="Scripts/jquery-3.2.1.min.js"></script>
    
    <script type ="text/javascript">
        function refresh(){
            $.ajax({
                url:"Ajax.aspx",
                cache:false,
                success:function (text){
                    document.getElementById("divMsg").innerHTML = text;
                },
                error:function (jqXHR,textStatus,errorThrown){
                    alert("网络连接有问题，请重试！");
                }
            });
            setTimeout("refresh()",500);
        }
        </script>
</head>
<body onload ="refresh()">
    <form id="form1" runat="server">
        <div id ="divMsg">
            </div>
    <div>
    
        <asp:Label ID="lblName" runat="server"></asp:Label>
    
    </div>
        <asp:TextBox ID="txtMessage" runat="server" Height="62px" TextMode="MultiLine" Width="196px"></asp:TextBox>
        <p>
            <asp:Button ID="btnSend" runat="server" Text="发送" OnClick="btnSend_Click" />
        </p>
    </form>
</body>
</html>

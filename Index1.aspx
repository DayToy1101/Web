<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="manager_Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>网上教学后台管理界面</title>
<script type="text/javascript">
    if (self != top) 
         top.location = self.location;
    </script>
</head>
<frameset name="dseg" framespacing="0" style="margin: 0px; overflow-x: hidden;"
    rows="181,*" frameborder="1" cols="*">
		<FRAME name="topFrame" id="FRAME1"  src="top.aspx" noResize scrolling="no" frameborder ="1" style=" overflow-x:hidden; margin: 0px;">
		<FRAMESET id="FRAMESET1" name="myFrame"  border="0" frameSpacing="0" rows="*" frameborder="1" cols="200,*"  style=" overflow-x:hidden; border:0px; ">
			<FRAME  id="FRAME2" frameborder="1" name="left" src="left.aspx" style=" overflow-x:hidden; margin: 0px;" noResize scrolling="no" />
			<FRAME id="FRAME3" frameborder="1" name="center" src="reguser.aspx" style="overflow-x:hidden; margin: 0px;" noResize scrolling="no" />
		</FRAMESET>
	</frameset>
</html>

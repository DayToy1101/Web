<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Editregur.aspx.cs" Inherits="manager_Editregur" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <link href="../css/manager.css" rel="stylesheet" type="text/css" />
</head>
<marquee   id='scroll_pic'   direction='right'>   
      &nbsp;   
    </marquee>   
        <script>   
            document.body.onload=function(){   
    var   mar   =   "";   
    for(i=0;i<12;i++){   
                          mar   +=   "<img   src='http://www.baidu.com/img/logo-yy.gif'>";   
                      }   
  document.getElementById("scroll_pic").innerHTML   =   mar;   
            }   
        </script>
</html>

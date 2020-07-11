<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="teacher_Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="../css/manager.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../js/treeview.js"></script>
    <script type="text/javascript" language="JavaScript">
var demo = new TreeView('demo','main');
demo.add(1,0,"网上教学后台管理系统作业","reguser.aspx",demo.config.root.src);
demo.add(2,1,"注册会员管理","reguser.aspx",null);
demo.add(3,1,"管理人员管理","Manager.aspx",null);
demo.add(4,1,"科目大类管理","Sort.aspx",null);
demo.add(4,1,"试题类别管理","QuestionType.aspx",null);
demo.add(4,1,"具体科目管理","Subject.aspx",null);
demo.add(4,1,"系统新闻管理","NewsAdd.aspx",null);
demo.add(5,1,"返回首页","/code/default.aspx",null);
document.write(demo);
    </script>

</head>
<body>
</body>
</html>

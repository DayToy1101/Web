<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="teacher_Left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="../css/manager.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../js/treeview.js"></script>
    <script type="text/javascript" language="JavaScript">
var demo = new TreeView('demo','main');
demo.add(1,0,"���Ͻ�ѧ��̨����ϵͳ��ҵ","reguser.aspx",demo.config.root.src);
demo.add(2,1,"ע���Ա����","reguser.aspx",null);
demo.add(3,1,"������Ա����","Manager.aspx",null);
demo.add(4,1,"��Ŀ�������","Sort.aspx",null);
demo.add(4,1,"����������","QuestionType.aspx",null);
demo.add(4,1,"�����Ŀ����","Subject.aspx",null);
demo.add(4,1,"ϵͳ���Ź���","NewsAdd.aspx",null);
demo.add(5,1,"������ҳ","/code/default.aspx",null);
document.write(demo);
    </script>

</head>
<body>
</body>
</html>

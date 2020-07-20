<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            height: 200px;
            width: 2038px;
        }
        .auto-style3
        {
            width: 161px;
            height: 35px;
        }
        .auto-style5
        {
            height: 24px;
        }
        .auto-style6
        {
            width: 215px;
            height: 35px;
        }
        .auto-style7
        {
            height: 40px;
        }
        .auto-style8
        {
            height: 39px;
        }
        .auto-style9
        {
            height: 23px;
        }
        .auto-style10
        {
            width: 215px;
            height: 40px;
        }
        #form1
        {}
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
    <tr>
        <td class="auto-style1">
            <asp:Image ID="Image2" runat="server" Height="214px" ImageUrl="~/Images/OZP.gif"
                Width="100%" />
        </td>
    </tr>
</table>
<div style="z-index: 101; left: 35px; width: 100px; position: absolute; top: 127px;
    height: 28px">
    <asp:Label ID="lbMessage" runat="server" ForeColor="Red" Width="279px"></asp:Label>
            <asp:Label ID="lbTime" runat="server" Width="281px"></asp:Label>

</div>
    <div style="z-index: 101; left: -7px; width: 159px; position: absolute; top: 219px;
    height: 419px">
    &nbsp;<table cellpadding="0" cellspacing="0" style="width: 201px">
        <tr>
            <td style="width: 107px" align="center" bgcolor="#66c2de">
                </td>
        </tr>
        <tr>
            <td style="width: 107px">
    <asp:TreeView ID="indexnav" runat="server" Height="362px" ImageSet="News" Width="162px">
        <ParentNodeStyle Font-Bold="false" />
        <HoverNodeStyle Font-Underline="True" ForeColor="Purple" />
        <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
                     <Nodes>
                         <asp:TreeNode SelectAction="None" Text="人事资源管理" Value="新建节点">
                             <asp:TreeNode SelectAction="None" Text="员工信息管理" Value="员工信息管理">
                                 <asp:TreeNode Text="员工信息列表" Value="员工信息列表" NavigateUrl="~/Employee/EmployeeList.aspx"></asp:TreeNode>
                                 <asp:TreeNode Text="员工信息查询" Value="员工信息查询" NavigateUrl="~/Employee/SelectEmployee.aspx"></asp:TreeNode>
                                 <asp:TreeNode Text="添加员工信息" Value="添加员工信息" NavigateUrl="~/Employee/AddEmployee.aspx"></asp:TreeNode>
                             </asp:TreeNode>
                             <asp:TreeNode SelectAction="None" Text="部门信息管理" Value="部门信息管理">
                                 <asp:TreeNode Text="部门信息列表" Value="部门信息列表" NavigateUrl="~/Department/DepartmentList.aspx"></asp:TreeNode>
                                 <asp:TreeNode Text="部门信息查询" Value="部门信息查询" NavigateUrl="~/Department/SelectDept.aspx"></asp:TreeNode>
                                 <asp:TreeNode Text="添加部门信息" Value="添加部门信息" NavigateUrl="~/Department/AddDept.aspx"></asp:TreeNode>
                             </asp:TreeNode>
                             <asp:TreeNode SelectAction="None" Text="考勤管理" Value="考勤管理">
                                 <asp:TreeNode Text="考勤规则" Value="考勤规则" NavigateUrl="~/TimeCard/TimeRule.aspx">
                                     <asp:TreeNode Text="编辑考勤规则" Value="编辑考勤规则" NavigateUrl="~/TimeCard/WriteRule.aspx"></asp:TreeNode>
                                 </asp:TreeNode>
                                 <asp:TreeNode Text="考勤记录" Value="考勤记录" NavigateUrl="~/TimeCard/TimeCount.aspx">
                                     <asp:TreeNode NavigateUrl="~/TimeCard/TimeCard.aspx" Text="员工考勤登记" Value="员工考勤登记"></asp:TreeNode>
                                 </asp:TreeNode>
                             </asp:TreeNode>
                             <asp:TreeNode SelectAction="None" Text="休假管理" Value="休假管理">
                                 <asp:TreeNode Text="假别管理" Value="假别管理" NavigateUrl="~/Leave/LeaveKind.aspx">
                                     <asp:TreeNode Text="添加假别" Value="添加假别" NavigateUrl="~/Leave/AddLeave.aspx"></asp:TreeNode>
                                 </asp:TreeNode>
                                 <asp:TreeNode Text="休假记录" Value="休假记录" NavigateUrl="~/Leave/LeaveList.aspx">
                                 </asp:TreeNode>
                             </asp:TreeNode>
                             <asp:TreeNode SelectAction="None" Text="工资管理" Value="工资管理">
                                 <asp:TreeNode Text="工资信息列表" Value="工资信息列表" NavigateUrl="~/Salary/SalaryList.aspx"></asp:TreeNode>
                                 <asp:TreeNode Text="查询工资记录" Value="查询工资记录" NavigateUrl="~/Salary/SelectSalary.aspx"></asp:TreeNode>
                             </asp:TreeNode>
                             <asp:TreeNode SelectAction="None" Text="加班管理" Value="加班管理">
                                 <asp:TreeNode Text="加班记录" Value="加班记录" NavigateUrl="~/Overtime/Overtime.aspx"></asp:TreeNode>
                                 <asp:TreeNode NavigateUrl="~/Overtime/AddOvertime.aspx" Text="加班登记" Value="加班登记"></asp:TreeNode>
                             </asp:TreeNode>
                             <asp:TreeNode SelectAction="None" Text="日志管理" Value="日志管理">
                                 <asp:TreeNode Text="添加日志" Value="添加日志" NavigateUrl="~/Article/AddArticle.aspx"></asp:TreeNode>
                                 <asp:TreeNode Text="查看日志" Value="查看日志" NavigateUrl="~/Article/SelectArticle.aspx"></asp:TreeNode>
                                 <asp:TreeNode Text="日志列表" Value="日志列表" NavigateUrl="~/Article/ArticleList.aspx"></asp:TreeNode>
                             </asp:TreeNode>
                         </asp:TreeNode>
                     </Nodes>
        <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="DarkBlue" HorizontalPadding="5px"
            NodeSpacing="0px" VerticalPadding="0px" />
        <DataBindings>
            <asp:TreeNodeBinding DataMember="人事资源管理系统" Text="人事资源管理系统" Value="人事资源管理系统" />
            <asp:TreeNodeBinding />
            <asp:TreeNodeBinding />
            <asp:TreeNodeBinding />
            <asp:TreeNodeBinding />
            <asp:TreeNodeBinding />
        </DataBindings>
                 </asp:TreeView>
                 </td>
        </tr>
    </table>
</div>
</form>
</body>
    </html>
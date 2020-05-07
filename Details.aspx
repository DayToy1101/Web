<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:DetailsView ID="dvProduct" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ProductId" DataSourceID="ldsProduct" Height="50px" Width="274px">
            <Fields>
                <asp:BoundField DataField="ProductId" HeaderText="ProductId" InsertVisible="False" ReadOnly="True" SortExpression="ProductId" />
                <asp:TemplateField HeaderText="CategoryId" SortExpression="CategoryId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        <asp:DropDownList ID="ddlCategoryId" runat="server" DataSourceID="ldsCategory" DataTextField="Name" DataValueField="CategoryId" Height="16px" Width="190px">
                        </asp:DropDownList>
                    </HeaderTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("CategoryId") %>'></asp:TextBox>
                        <asp:DropDownList ID="ddlCategoryId" runat="server" DataSourceID="ldsCategory" DataTextField="Name" DataValueField="CategoryId" Height="16px" Width="187px">
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCategoryId" runat="server" Text='<%# Bind("CategoryId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ListPrice" HeaderText="ListPrice" SortExpression="ListPrice" />
                <asp:BoundField DataField="UnitCost" HeaderText="UnitCost" SortExpression="UnitCost" />
                <asp:TemplateField HeaderText="SuppId" SortExpression="SuppId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SuppId") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderTemplate>
                        <asp:DropDownList ID="ddlSuppId" runat="server" DataSourceID="ldsSupplier" DataTextField="Name" DataValueField="SuppId" Height="16px" Width="183px">
                        </asp:DropDownList>
                    </HeaderTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SuppId") %>'></asp:TextBox>
                        <asp:DropDownList ID="ddlSuppId" runat="server" DataSourceID="ldsSupplier" DataTextField="Name" DataValueField="SuppId" Height="16px" Width="186px">
                        </asp:DropDownList>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblSuppId" runat="server" Text='<%# Bind("SuppId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Descn" HeaderText="Descn" SortExpression="Descn" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:LinqDataSource ID="ldsProduct" runat="server" ContextTypeName="MyPetShopDataContext" EnableDelete="True" EnableInsert="True" EnableUpdate="True" EntityTypeName="" TableName="Product">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="ldsCategory" runat="server" ContextTypeName="MyPetShopDataContext" EntityTypeName="" Select="new (CategoryId, Name)" TableName="Category">
        </asp:LinqDataSource>
        <asp:LinqDataSource ID="ldsSupplier" runat="server" ContextTypeName="MyPetShopDataContext" EntityTypeName="" Select="new (SuppId, Name)" TableName="Supplier">
        </asp:LinqDataSource>
    </form>
</body>
</html>

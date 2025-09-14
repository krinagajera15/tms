<%@ Page Language="C#" AutoEventWireup="true" CodeFile="country_table.aspx.cs" Inherits="Vendor_country_table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><h1>Country Detail</h1></center>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CountryID" DataSourceID="SqlDataSource1" CellPadding="15" CellSpacing="15" HorizontalAlign="Center" PageSize="5">
            <Columns>
                <asp:BoundField DataField="CountryID" HeaderText="CountryID" InsertVisible="False" ReadOnly="True" SortExpression="CountryID" />
                <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
                <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" ShowEditButton="True" UpdateImageUrl="~/img/update.png" ControlStyle-Height="30" ControlStyle-Width="30" >
<ControlStyle Height="30px" Width="30px"></ControlStyle>
                </asp:CommandField>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/img/delet.png" ShowDeleteButton="True" ControlStyle-Height="30" ControlStyle-Width="30" >
<ControlStyle Height="30px" Width="30px"></ControlStyle>
                </asp:CommandField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Country] WHERE [CountryID] = @CountryID" InsertCommand="INSERT INTO [Country] ([CountryName], [Status]) VALUES (@CountryName, @Status)" SelectCommand="SELECT * FROM [Country]" UpdateCommand="UPDATE [Country] SET [CountryName] = @CountryName, [Status] = @Status WHERE [CountryID] = @CountryID">
            <DeleteParameters>
                <asp:Parameter Name="CountryID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CountryName" Type="String" />
                <asp:Parameter Name="Status" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CountryName" Type="String" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="CountryID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

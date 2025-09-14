<%@ Page Language="C#" AutoEventWireup="true" CodeFile="city_table.aspx.cs" Inherits="Vendor_city_table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><h1>City Details</h1></center>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CityID" DataSourceID="SqlDataSource1" CellPadding="15" CellSpacing="15" HorizontalAlign="Center" PageSize="5">
            <Columns>
                <asp:BoundField DataField="CityID" HeaderText="CityID" InsertVisible="False" ReadOnly="True" SortExpression="CityID" />
                <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
                <asp:BoundField DataField="StateID" HeaderText="StateID" SortExpression="StateID" />
                <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:CommandField CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" ShowEditButton="True" UpdateImageUrl="~/img/update.png" ControlStyle-Height="30" ControlStyle-Width="30" ButtonType="Image" >
<ControlStyle Height="30px" Width="30px"></ControlStyle>
                </asp:CommandField>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/img/delet.png" ShowDeleteButton="True" ControlStyle-Height="30" ControlStyle-Width="30" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [City] WHERE [CityID] = @CityID" InsertCommand="INSERT INTO [City] ([CityName], [StateID], [Status]) VALUES (@CityName, @StateID, @Status)" SelectCommand="SELECT * FROM [City]" UpdateCommand="UPDATE [City] SET [CityName] = @CityName, [StateID] = @StateID, [Status] = @Status WHERE [CityID] = @CityID">
            <DeleteParameters>
                <asp:Parameter Name="CityID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CityName" Type="String" />
                <asp:Parameter Name="StateID" Type="String" />
                <asp:Parameter Name="Status" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CityName" Type="String" />
                <asp:Parameter Name="StateID" Type="String" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="CityID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

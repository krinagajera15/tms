<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pincode_form.aspx.cs" Inherits="Vendor_pincode_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><h1>Pincode Dtails</h1></center>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="PincodeID" DataSourceID="SqlDataSource1" HorizontalAlign="Center" PageSize="5" CellPadding="15" CellSpacing="15">
            <Columns>
                <asp:BoundField DataField="PincodeID" HeaderText="PincodeID" InsertVisible="False" ReadOnly="True" SortExpression="PincodeID" />
                <asp:BoundField DataField="Pincode" HeaderText="Pincode" SortExpression="Pincode" />
                <asp:BoundField DataField="CityID" HeaderText="CityID" SortExpression="CityID" />
                <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" ShowEditButton="True" UpdateImageUrl="~/img/update.png" ControlStyle-Height="30" ControlStyle-Width="30" />
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/img/delet.png" ShowDeleteButton="True" ControlStyle-Height="30" ControlStyle-Width="30" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Pincode] WHERE [PincodeID] = @PincodeID" InsertCommand="INSERT INTO [Pincode] ([Pincode], [CityID], [Status]) VALUES (@Pincode, @CityID, @Status)" SelectCommand="SELECT * FROM [Pincode]" UpdateCommand="UPDATE [Pincode] SET [Pincode] = @Pincode, [CityID] = @CityID, [Status] = @Status WHERE [PincodeID] = @PincodeID">
            <DeleteParameters>
                <asp:Parameter Name="PincodeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Pincode" Type="String" />
                <asp:Parameter Name="CityID" Type="Int32" />
                <asp:Parameter Name="Status" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pincode" Type="String" />
                <asp:Parameter Name="CityID" Type="Int32" />
                <asp:Parameter Name="Status" Type="Boolean" />
                <asp:Parameter Name="PincodeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

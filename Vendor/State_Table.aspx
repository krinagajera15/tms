<%@ Page Language="C#" AutoEventWireup="true" CodeFile="State_Table.aspx.cs" Inherits="New_folder_State_Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center><h1>State Details</h1></center>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StateID" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="15" CellSpacing="15" HorizontalAlign="Center" PageSize="5">
            <Columns>
                <asp:BoundField DataField="StateID" HeaderText="StateID" InsertVisible="False" ReadOnly="True" SortExpression="StateID" />
                <asp:BoundField DataField="StateName" HeaderText="StateName" SortExpression="StateName" />
                <asp:BoundField DataField="CountryID" HeaderText="CountryID" SortExpression="CountryID" />
                <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:CommandField ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" ShowEditButton="True" UpdateImageUrl="~/img/update.png" ControlStyle-Height="30" ControlStyle-Width="30" />
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/img/delet.png" ShowDeleteButton="True" ControlStyle-Height="30" ControlStyle-Width="30" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [State]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

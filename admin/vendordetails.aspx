<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="vendordetails.aspx.cs" Inherits="admin_vendordetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container mt-4">
            <h2 class="text-center mb-4">Registered Vendor</h2>
                <asp:gridview runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" DataKeyNames="V_ID" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="V_ID" HeaderText="V_ID" InsertVisible="False" ReadOnly="True" SortExpression="V_ID" />
                        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                        <asp:BoundField DataField="FULLNAME" HeaderText="FULLNAME" SortExpression="FULLNAME" />
                        <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" />
                        <asp:BoundField DataField="MOBILE_NUMBER" HeaderText="MOBILE_NUMBER" SortExpression="MOBILE_NUMBER" />
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" ShowEditButton="True" UpdateImageUrl="~/img/update.png"  ControlStyle-Height="30" ControlStyle-Width="30" />
                        <asp:CommandField ButtonType="Image" DeleteImageUrl="~/img/delet.png" ShowDeleteButton="True" ControlStyle-Height="30" ControlStyle-Width="30" />
                    </Columns>
            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [VENDOR_MASTER]"></asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


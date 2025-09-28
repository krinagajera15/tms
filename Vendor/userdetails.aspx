<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="userdetails.aspx.cs" Inherits="Vendor_userdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <!--User request Details -->
     <div class="container mt-4">
            <h2 class="text-center mb-4">Registered Users</h2>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  CssClass="table table-bordered" AutoGenerateColumns="False" DataKeyNames="U_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="U_ID" HeaderText="U_ID" InsertVisible="False" ReadOnly="True" SortExpression="U_ID" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [USER_REGISTRETION]"></asp:SqlDataSource>
</div>
</asp:Content>



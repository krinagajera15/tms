<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="truckrequestdata.aspx.cs" Inherits="Vendor_truckrequestdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container mt-5">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Truck Request </h4>
                </div>
                <div class="card-body">
    <asp:GridView runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped" CellPadding="20" CellSpacing="20" DataKeyNames="TR_ID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="TR_ID" HeaderText="TR_ID" InsertVisible="False" ReadOnly="True" SortExpression="TR_ID" />
            <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" SortExpression="USER_NAME" />
            <asp:BoundField DataField="FROM_CITY_NAME" HeaderText="FROM_CITY_NAME" SortExpression="FROM_CITY_NAME" />
            <asp:BoundField DataField="TO_CITY_NAME" HeaderText="TO_CITY_NAME" SortExpression="TO_CITY_NAME" />
            <asp:BoundField DataField="TR_STARTDATE" HeaderText="TR_STARTDATE" SortExpression="TR_STARTDATE" />
            <asp:BoundField DataField="TR_ENDDATE" HeaderText="TR_ENDDATE" SortExpression="TR_ENDDATE" />
            <asp:BoundField DataField="NO_OF_TRUCK" HeaderText="NO_OF_TRUCK" SortExpression="NO_OF_TRUCK" />
            <asp:BoundField DataField="REMARKS" HeaderText="REMARKS" SortExpression="REMARKS" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [TR_REQUEST]"></asp:SqlDataSource>
         
                </div>
            </div>
        </div>
     <!-- Bootstrap JS (optional for components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>



<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="truckrequest.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
  <div>
    <div>
     <center><h1 style="font-family:'Times New Roman'; font-size:xx-large" class="bg-green-light">Truck Request</h1></center>
    <br />
        <asp:GridView ID="GridView1" CssClass="gridview-style" RowStyle-CssClass="border-2"  BorderStyle="Solid" BorderWidth="1px" GridLines="Both" CellPadding="5" CellSpacing="0" runat="server" AutoGenerateColumns="False" Width="5px" HeaderStyle-BorderStyle="Double" HeaderStyle-BackColor="#c0c0c0" DataKeyNames="TR_ID" DataSourceID="SqlDataSource1">
        <Columns >
            <asp:BoundField DataField="TR_ID" HeaderText="TR_ID" InsertVisible="False" ReadOnly="True" SortExpression="TR_ID" />
            <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" SortExpression="USER_NAME" />
            <asp:BoundField DataField="FROM_CITY_NAME" HeaderText="FROM_CITY_NAME" SortExpression="FROM_CITY_NAME" />
            <asp:BoundField DataField="TO_CITY_NAME" HeaderText="TO_CITY_NAME" SortExpression="TO_CITY_NAME" />
            <asp:BoundField DataField="TR_STARTDATE" HeaderText="TR_STARTDATE" SortExpression="TR_STARTDATE" />
            <asp:BoundField DataField="TR_ENDDATE" HeaderText="TR_ENDDATE" SortExpression="TR_ENDDATE" />
            <asp:BoundField DataField="NO_OF_TRUCK" HeaderText="NO_OF_TRUCK" SortExpression="NO_OF_TRUCK" />
            <asp:BoundField DataField="REMARKS" HeaderText="REMARKS" SortExpression="REMARKS" />
            <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="fas fa-edit" ControlStyle-BackColor="LightSeaGreen" />
            <asp:CommandField ShowDeleteButton="True"  ControlStyle-CssClass="fas fa-trash" ControlStyle-BackColor="Red"  />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TMSConnectionString %>" SelectCommand="SELECT * FROM [TR_REQUEST]"></asp:SqlDataSource>
    </div>
  </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


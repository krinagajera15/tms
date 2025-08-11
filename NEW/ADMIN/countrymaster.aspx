<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="countrymaster.aspx.cs" Inherits="admin_countrymaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CountryID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="CountryID" HeaderText="CountryID" InsertVisible="False" ReadOnly="True" SortExpression="CountryID" />
            <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
            <asp:CheckBoxField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:CommandField ButtonType="Image" ShowEditButton="True"  ControlStyle-CssClass="fas fa-edit" EditImageUrl="../img/icons8-edit-pencil-50.png" />
            <asp:CommandField ButtonType="Image" ShowDeleteButton="True"  ControlStyle-CssClass="fas fa-trash" DeleteImageUrl="../img/icons8-delete-button-50.png" ControlStyle-Height="35" ControlStyle-Width="35" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=BCA-36;Initial Catalog=TMS;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Country]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


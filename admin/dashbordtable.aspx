<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="dashbordtable.aspx.cs" Inherits="admin_dashbordtable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background: #f9f9f9;
        }
        .stats-table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            background: #fff;
        }
        .stats-table th, .stats-table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        .stats-table th {
            background-color: #f5f5f5;
            font-weight: bold;
        }
        .up {
            color: green;
            font-weight: bold;
        }
        .down {
            color: red;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:GridView ID="gvStats" runat="server" AutoGenerateColumns="False" CssClass="stats-table">
            <Columns>
                <asp:BoundField DataField="SrNo" HeaderText="#" />
                <asp:BoundField DataField="Item" HeaderText="Item" />
                <asp:BoundField DataField="Last" HeaderText="Last" />
                <asp:BoundField DataField="Current" HeaderText="Current" />
            </Columns>
        </asp:GridView>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


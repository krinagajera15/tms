<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="biddetails.aspx.cs" Inherits="biddetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* Container */
        .grid-container {
            margin: 40px auto;
            width: 90%;
            max-width: 900px;
        }

        /* GridView Styling */
        .gridview {
            border-collapse: collapse;
            width: 100%;
            font-family: Arial, sans-serif;
            font-size: 14px;
            background: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        /* Header */
        .gridview th {
            background: linear-gradient(135deg, #FF3E41, #FF3E41);
            color: white;
            padding: 12px;
            text-align: left;
        }

        /* Rows */
        .gridview td {
            padding: 12px;
            border-bottom: 1px solid #eee;
        }

        /* Alternating row colors */
        .gridview tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Hover Effect */
        .gridview tr:hover {
            background-color: #f1f1f1;
            transition: 0.3s;
        }

        /* Title */
        h2 {
            font-family: Arial, sans-serif;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Bid Details</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Bid Details</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
   <!--Bid Details -->
    <div class="grid-container">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" CssClass="gridview">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="TR_ID" HeaderText="TR_ID" SortExpression="TR_ID" />
            <asp:BoundField DataField="V_ID" HeaderText="V_ID" SortExpression="V_ID" />
            <asp:BoundField DataField="BidAmount" HeaderText="BidAmount" SortExpression="BidAmount" />
            <asp:BoundField DataField="NoOfTrucks" HeaderText="NoOfTrucks" SortExpression="NoOfTrucks" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [BID_DETAILS]"></asp:SqlDataSource>
    </div>
<!--Bid Details -->
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>



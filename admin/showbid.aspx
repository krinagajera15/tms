<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="showbid.aspx.cs" Inherits="admin_showbid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        .container {
            width: 80%;
            margin: auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            font-family: Arial, sans-serif;
        }
        .header {
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .label {
            font-weight: bold;
        }
        .grid {
            margin-top: 20px;
            border: 1px solid #ccc;
            width: 100%;
        }
        .btn {
            padding: 8px 15px;
            margin-right: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn-load { background: #007bff; color: white; }
        .btn-approve { background: #28a745; color: white; }
        .message { margin-top: 15px; font-weight: bold; }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container">
            <div class="header">Vendor Bid Approval</div>

            <div class="form-group">
                <span class="label">Select Truck Request:</span>
                <asp:DropDownList ID="ddltrid" runat="server" DataSourceID="SqlDataSource1" DataTextField="ID" DataValueField="ID"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [ID] FROM [BID_DETAILS]"></asp:SqlDataSource>
                <asp:Button ID="btnLoad" runat="server" CssClass="btn btn-load" Text="Load Bids" OnClick="btnLoad_Click" />
            </div>

            <asp:GridView ID="gvBids" runat="server" AutoGenerateColumns="False" CssClass="grid"
                BorderWidth="1" GridLines="Both">
                <Columns>
                    <asp:BoundField DataField="V_ID" HeaderText="Vendor ID" />
                    <asp:BoundField DataField="BidAmount" HeaderText="Total Amount" />
                    <asp:BoundField DataField="NoOfTrucks" HeaderText="No. of Trucks" />
                    <asp:BoundField DataField="RatePerTruck" HeaderText="Rate Per Truck" DataFormatString="{0:F2}" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                </Columns>
            </asp:GridView>

            <div class="form-group">
                <asp:Button ID="btnApprove" runat="server" CssClass="btn btn-approve" Text="Approve Lowest Bid" OnClick="btnApprove_Click" />
            </div>

            <asp:Label ID="lblMessage" runat="server" CssClass="message" ForeColor="Red"></asp:Label>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


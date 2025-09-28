<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="biddetailshow.aspx.cs" Inherits="admin_biddetailshow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Vendor Bid Approval</title>
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
      <center><h1>Vendor Bid</h1></center>
         <br />
            <div class="form-group">
                <span class="label">Select Truck Request:</span>
                    <asp:DropDownList ID="ddltrid" runat="server"></asp:DropDownList>
                    <asp:Button ID="btnLoad" runat="server" CssClass="btn btn-load" Text="Load Bids" OnClick="btnLoad_Click"  />
           </div>
                <asp:GridView ID="gvBids" runat="server" AutoGenerateColumns="False" CssClass="grid" BorderWidth="1px" GridLines="Both" CellPadding="15" CellSpacing="15">
               
                    <Columns>
                        <asp:BoundField DataField="V_ID" HeaderText="Vendor ID" />
                        <asp:BoundField DataField="BidAmount" HeaderText="Total Amount" />
                        <asp:BoundField DataField="NoOfTrucks" HeaderText="No. of Trucks" />
                        <asp:BoundField DataField="RatePerTruck" HeaderText="Rate Per Truck" DataFormatString="{0:F2}" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                    </Columns>
            </asp:GridView>
          <div class="form-group">
            <asp:Button ID="btnApprove" runat="server" CssClass="btn btn-approve" Text="Approve Lowest Bid" OnClick="btnApprove_Click" />
          </div>
         <asp:Label ID="lblMessage" runat="server"  CssClass="message" ForeColor="Red"></asp:Label>
     </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


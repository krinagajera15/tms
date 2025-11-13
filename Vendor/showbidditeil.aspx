<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="showbidditeil.aspx.cs" Inherits="Vendor_showbidditeil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
     body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f7fb;
      padding: 30px;
      color: #333;
    }
    .container {
      background-color: #fff;
      max-width: 600px;
      margin: 0 auto;
      border-radius: 12px;
      box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
      overflow: hidden;
    }
    .header {
      background-color: #28a745;
      color: #fff;
      padding: 20px;
      text-align: center;
      font-size: 22px;
      font-weight: 600;
    }
    .content {
      padding: 30px;
      line-height: 1.6;
    }
    .content p {
      font-size: 16px;
      margin-bottom: 15px;
    }
    .bid-box {
      background: #e8f5e9;
      border-left: 5px solid #28a745;
      padding: 15px;
      border-radius: 6px;
      margin-bottom: 20px;
    }
    .footer {
      background-color: #f8f9fa;
      text-align: center;
      padding: 15px;
      font-size: 13px;
      color: #777;
    }
    .btn {
      display: inline-block;
      background-color: #28a745;
      color: white;
      padding: 10px 20px;
      border-radius: 6px;
      text-decoration: none;
      font-weight: 500;
    }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container mt-4">
            <h2 class="text-center mb-4">My Bid Details</h2>
            
            <asp:Label ID="lblMessage" runat="server" CssClass="table table-bordered"></asp:Label>

            <asp:GridView ID="gvVendorBids" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" OnRowCommand="gvVendorBids_RowCommand" OnRowDataBound="gvVendorBids_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="TR_ID" HeaderText="Truck Request ID" />
                    <asp:BoundField DataField="BidAmount" HeaderText="Bid Amount" />
                    <asp:BoundField DataField="NoOfTrucks" HeaderText="No. of Trucks" />
                    <asp:TemplateField HeaderText="status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" 
                                Text='<%# Eval("status") %>' 
                                CssClass='<%# (Eval("status").ToString()=="Approved"?"status-Approved":
                                              (Eval("status").ToString()=="Rejected"?"status-Rejected":"status-Pending")) %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnAddVehicle" runat="server" Text="Add Vehicle/Driver" 
                                CommandName="AddVehicle" CommandArgument='<%# Eval("TR_ID") %>'  />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
         
          <div class="container">
    <div class="header">✅ Bid Approved!</div>
    <div class="content">
      <p>Dear <b>Vendor</b>,</p>
      <p>We are pleased to inform you that your bid (ID: <b>{BID_ID}</b>) has been <b style="color:#28a745;">approved</b> by our admin team.</p>
      <div class="bid-box">
        <p>📦 You can now proceed with adding vehicle details and continue with the transportation process.</p>
      </div>
      <p>Thank you for your cooperation.</p>
      <a href="https://yourprojectlink.com/Vendor/Login" class="btn">Go to Dashboard</a>
    </div>
    <div class="footer">
      © 2025 Transport Management System | This is an automated message.
    </div>
  </div>

         <div class="container">
    <div class="header">❌ Bid Rejected</div>
    <div class="content">
      <p>Dear <b>Vendor</b>,</p>
      <p>We regret to inform you that your bid (ID: <b>{BID_ID}</b>) has been <b style="color:#dc3545;">rejected</b> by our admin team.</p>
      <div class="bid-box">
        <p>📭 You may review your bid details and submit a new proposal if eligible for future opportunities.</p>
      </div>
      <p>Thank you for your participation.</p>
      <a href="https://yourprojectlink.com/Vendor/Login" class="btn">View Your Bids</a>
    </div>
    <div class="footer">
      © 2025 Transport Management System | This is an automated message.
    </div>
  </div>

        </div>
</asp:Content>



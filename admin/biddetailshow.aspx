<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="biddetailshow.aspx.cs" Inherits="admin_biddetailshow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container">
            <div class="header">Vendor Bid Approval</div>

            <div class="form-group">
                <span class="label">Select Truck Request:</span>
                    <asp:DropDownList ID="ddltrid" runat="server"></asp:DropDownList>
                    <asp:Button ID="btnLoad" runat="server" Text="Button" CssClass="btn btn-load" Text="Load Bids" OnClick="btnLoad_Click"  />
           </div>
                <asp:GridView ID="gvBids" runat="server" AutoGenerateColumns="False" CssClass="grid"
                BorderWidth="1" GridLines="Both"></asp:GridView>
          <div class="form-group">
            <asp:Button ID="btnApprove" runat="server" Text="Button" CssClass="btn btn-approve" Text="Approve Lowest Bid" OnClick="btnApprove_Click" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


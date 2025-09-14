<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="container py-5">
  <div class="row">
    <div class="col-md-4 text-center">
         <asp:Image ID="imgProfile" runat="server" Width="150px" Height="150px" CssClass="round-profile" AlternateText="Profile Photo" />
          <h4 class="mt-3"><asp:Label ID="lblName" runat="server" Text="User Name"></asp:Label></h4>
          <p>Email: <asp:Label ID="lblEmail" runat="server" Text="email@example.com"></asp:Label></p>
          <p>Phone: <asp:Label ID="lblPhone" runat="server" Text="+91 9876543210"></asp:Label></p>
          <a href="edit-profile.aspx" class="btn btn-primary btn-sm">Edit Profile</a>
          <a href="change-password.aspx" class="btn btn-outline-secondary btn-sm mt-2">Change Password</a>
    </div>
    <div class="col-md-8">
     <h5>Your Bookings</h5>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </div>
  </div>
</div>
</asp:Content>



<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="admin_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div class="container mt-5">
    <h2 class="mb-4">Add About Us Content</h2>

        <div class="mb-3">
            <label class="form-label">Sub Title</label>
            <asp:TextBox ID="txtSubTitle" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="form-label">Title</label>
            <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="form-label">Description</label>
            <asp:TextBox ID="txtDescription" TextMode="MultiLine" Rows="4" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="form-label">Image URL</label>
            <asp:TextBox ID="txtImageUrl" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="form-label">Button Text</label>
            <asp:TextBox ID="txtButtonText" CssClass="form-control" runat="server"></asp:TextBox>
        </div>

        <div class="mb-3">
            <label class="form-label">Button URL</label>
            <asp:TextBox ID="txtButtonUrl" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
       
        <asp:Button ID="btnSave" Text="Save" CssClass="btn btn-primary" runat="server" OnClick="btnSave_Click2" />
        <asp:Label ID="lblMsg" runat="server" CssClass="text-success ms-3"></asp:Label>
         </div>
</asp:Content>


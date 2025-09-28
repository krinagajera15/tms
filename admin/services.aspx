<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="admin_services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container mt-5">
            <div class="card shadow p-4">
                <h3 class="mb-3">Add New Service</h3>

                <div class="mb-3">
                    <label class="form-label">Title</label>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label class="form-label">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label class="form-label">Image Url</label>
                    <asp:TextBox ID="txtImageUrl" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label class="form-label">Link Url</label>
                    <asp:TextBox ID="txtLinkUrl" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <asp:Button ID="btnSave" runat="server" Text="Save Service" CssClass="btn btn-primary" OnClick="btnSave_Click" />
                <asp:Label ID="lblMsg" runat="server" CssClass="mt-3 d-block"></asp:Label>
            </div>
        </div>
</asp:Content>



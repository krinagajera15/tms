<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">About Us</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">About</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <!-- About Start -->
    <div class="container-fluid overflow-hidden py-5 px-lg-0">
    <div class="container about py-5 px-lg-0">
        <div class="row g-5 mx-lg-0">

            <!-- Left Image -->
            <div class="col-lg-6 ps-lg-0 wow fadeInLeft" data-wow-delay="0.1s" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img id="imgAbout" runat="server" class="position-absolute img-fluid w-100 h-100" style="object-fit: cover;" alt="">
                </div>
            </div>

            <!-- About Text -->
             <asp:Repeater ID="rptAbout" runat="server">
        <ItemTemplate>
            <div class="container-fluid overflow-hidden py-5 px-lg-0">
                <div class="container about py-5 px-lg-0">
                    <div class="row g-5 mx-lg-0">
                        <div class="col-lg-6 ps-lg-0 wow fadeInLeft" data-wow-delay="0.1s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <!-- Image bind -->
                                <img class="position-absolute img-fluid w-100 h-100" 
                                     src='<%# Eval("ImageUrl") %>' 
                                     style="object-fit: cover;" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6 about-text wow fadeInUp" data-wow-delay="0.3s">
                            <h6 class="text-secondary text-uppercase mb-3"><%# Eval("SubTitle") %></h6>
                            <h1 class="mb-5"><%# Eval("Title") %></h1>
                            <p class="mb-5"><%# Eval("Description") %></p>

                            <a href='<%# Eval("ButtonUrl") %>' class="btn btn-primary py-3 px-5">
                                <%# Eval("ButtonText") %>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <!-- About End -->
  
</asp:Content>



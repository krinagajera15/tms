<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="quote.aspx.cs" Inherits="quote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Quote</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Quote</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <!-- Quote Start -->
   <div class="container-xxl py-5">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                   <img class="mb-5" src="img/tr1.jpg" style="object-fit: cover; margin-left:-80px; height:250px" alt="">
                    <h6 class="text-secondary text-uppercase mb-3">Get A Quote</h6>
                   
                <div class="col-lg-7">
                    <div class="bg-light text-center p-5 wow fadeIn" data-wow-delay="0.5s">
                        <form>
                            <div class="row g-90">
                                <div class="col-12 col-sm-6">
              <asp:TextBox ID="TextBox1" runat="server" class="form-control border-0" placeholder="Your Name" style="height: 55px; width: 74px"></asp:TextBox>
                                </div>
                                <div class="col-12 col-sm-6">
                  <asp:TextBox ID="TextBox2" runat="server" class="form-control border-0" placeholder="Your Email" style="height: 55px; width: 74px"></asp:TextBox>
                                </div>
                                <div class="col-12 col-sm-6">
                      <asp:TextBox ID="TextBox3" runat="server" class="form-control border-0" placeholder="Your Mobile" style="height: 55px; width: 74px"></asp:TextBox>
                                </div>
                                <div class="col-12 col-sm-6">
                                  <select class="form-select border-0" style="height: 55px;">
                                        <option selected>Select A Freight</option>
                                        <option value="1">Freight 1</option>
                                        <option value="2">Freight 2</option>
                                        <option value="3">Freight 3</option>
                                    </select>
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control border-0" placeholder="Special Note"></textarea>
                                </div>
                                <div class="col-12">
                              <asp:Button ID="Button1" runat="server" Text="submit" class="btn btn-primary w-100 py-3" />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quote End -->
</asp:Content>



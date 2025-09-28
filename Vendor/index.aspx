<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Vendor_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-5">
        <div class="owl-carousel header-carousel position-relative mb-5">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/h1.jpg" alt=""/>
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Freight Bidding TMS</h5>
                                <h1 class="display-3 text-white animated slideInDown mb-3"> Freight Bidding <span class="text-primary">Transportation</span>Management System</h1>
                                <p class="fs-5 fw-medium text-white mb-4 pb-2">Vero elitr justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd rebum ipsum et diam justo clita et kasd rebum sea elitr.</p>
                                <!--<a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                <a href="" class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Free Quote</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/carousel-2.jpg" alt=""/>
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Freight Bidding TMS</h5>
                                <h1 class="display-3 text-white animated slideInDown mb-3"> Freight Bidding <span class="text-primary">Transportation</span>Management System</h1>
                                <p class="fs-5 fw-medium text-white mb-4 pb-2">Vero elitr justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd rebum ipsum et diam justo clita et kasd rebum sea elitr.</p>
                                <!--<a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                <a href="" class="btn btn-secondary py-md-3 px-md-5 animated slideInRight">Free Quote</a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->

    <!--Main-->
            <main class="bg-white-300 flex-1 p-3 overflow-hidden">
                <div class="flex flex-col">
                    <!-- Stats Row Starts Here -->
                    <div class="flex flex-1 flex-col md:flex-row lg:flex-row mx-2">
                        <div class="shadow-lg bg-red-vibrant border-l-8 hover:bg-red-vibrant-dark border-red-vibrant-dark mb-2 p-2 md:w-1/4 mx-2">
                            <div class="p-4 flex flex-col">
                                <a href="userdetails.aspx" class="no-underline text-white text-2xl">
                                    Total User
                                </a>
                                <a href="userdetails.aspx" class="no-underline text-white text-lg">
                                    Total User
                                </a>
                            </div>
                        </div>
                        <div class="shadow bg-warning border-l-8 hover:bg-warning-dark border-warning-dark mb-2 p-2 md:w-1/4 mx-2">
                            <div class="p-4 flex flex-col">
                                <a href="addbid.aspx" class="no-underline text-white text-2xl">
                                    Add Bid
                                </a>
                                <a href="addbid.aspx" class="no-underline text-white text-lg">
                                    Add Bid
                                </a>
                            </div>
                        </div>
                        <div class="shadow bg-success border-l-8 hover:bg-success-dark border-success-dark mb-2 p-2 md:w-1/4 mx-2">
                            <div class="p-4 flex flex-col">
                                <a href="showbidditeil.aspx" class="no-underline text-white text-2xl">
                                    Show Bid
                                </a>
                                <a href="showbidditeil.aspx" class="no-underline text-white text-lg">
                                     Show Bid
                                </a>
                            </div>
                     </div>
                        <div class="shadow bg-info border-l-8 hover:bg-info-dark border-info-dark mb-2 p-2 md:w-1/4 mx-2">
                            <div class="p-4 flex flex-col">
                                <a href="truckrequestdata.aspx" class="no-underline text-white text-2xl">
                                    Show Truck Request
                                </a>
                                <a href="truckrequestdata.aspx" class="no-underline text-white text-lg">
                                    Show Truck Request
                                </a>
                            </div>
                        </div>
                           
                    </div>
                    <!-- /Stats Row Ends Here -->
     </div>
</asp:Content>



<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="service.aspx.cs" Inherits="service" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Services</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home123</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Services</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <!-- Service Start -->
<%--    <div class="container-xxl py-5">
        <div class="container py-5">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="text-secondary text-uppercase">Our Services</h6>
                <h1 class="mb-5">Explore Our Services</h1>
            </div>
            <div class="row g-4">
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <img class="img-fluid" src="img/container.jpg" alt="">
                        </div>
                        <h4 class="mb-3">Air Freight</h4>
                        <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                        <a class="btn-slide mt-2" href=""><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <img class="img-fluid" src="img/tank.jpg" alt="">
                        </div>
                        <h4 class="mb-3">Ocean Freight</h4>
                        <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                        <a class="btn-slide mt-2" href=""><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <img class="img-fluid" src="img/mini.jpg" alt="">
                        </div>
                        <h4 class="mb-3">Road Freight</h4>
                        <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                        <a class="btn-slide mt-2" href=""><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <img class="img-fluid" src="img/trailer.png" alt="">
                        </div>
                        <h4 class="mb-3">Train Freight</h4>
                        <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                        <a class="btn-slide mt-2" href=""><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <img class="img-fluid" src="img/fletbet.jpg.png" alt="">
                        </div>
                        <h4 class="mb-3">Customs Clearance</h4>
                        <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                        <a class="btn-slide mt-2" href=""><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <img class="img-fluid" src="img/service-6.jpg" alt="">
                        </div>
                        <h4 class="mb-3">Warehouse Solutions</h4>
                        <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                        <a class="btn-slide mt-2" href=""><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


    <!-- Testimonial Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="text-center">
                <h6 class="text-secondary text-uppercase">Testimonial</h6>
                <h1 class="mb-0">Our Clients Say!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item p-4 my-5">
                    <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                    <div class="d-flex align-items-end mb-4">
                        <img class="img-fluid flex-shrink-0" src="img/testimonial-1.jpg" style="width: 80px; height: 80px;">
                        <div class="ms-4">
                            <h5 class="mb-1">Client Name</h5>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                </div>
                <div class="testimonial-item p-4 my-5">
                    <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                    <div class="d-flex align-items-end mb-4">
                        <img class="img-fluid flex-shrink-0" src="img/testimonial-2.jpg" style="width: 80px; height: 80px;">
                        <div class="ms-4">
                            <h5 class="mb-1">Client Name</h5>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                </div>
                <div class="testimonial-item p-4 my-5">
                    <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                    <div class="d-flex align-items-end mb-4">
                        <img class="img-fluid flex-shrink-0" src="img/testimonial-3.jpg" style="width: 80px; height: 80px;">
                        <div class="ms-4">
                            <h5 class="mb-1">Client Name</h5>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                </div>
                <div class="testimonial-item p-4 my-5">
                    <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                    <div class="d-flex align-items-end mb-4">
                        <img class="img-fluid flex-shrink-0" src="img/testimonial-4.jpg" style="width: 80px; height: 80px;">
                        <div class="ms-4">
                            <h5 class="mb-1">Client Name</h5>
                            <p class="m-0">Profession</p>
                        </div>
                    </div>
                    <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->--%>
     <div class="container-xxl py-5">
        <div class="container py-5">
            <div class="text-center">
                <h6 class="text-secondary text-uppercase">Our Services</h6>
                <h1 class="mb-5">Explore Our Services</h1>
            </div>

            <div class="row g-4">
                <asp:Repeater ID="rptServices" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6 col-lg-4">
                            <div class="service-item p-4">
                                <div class="overflow-hidden mb-4">
                                    <img class="img-fluid" src='<%# Eval("ImageUrl") %>' alt="">
                                </div>
                                <h4 class="mb-3"><%# Eval("Title") %></h4>
                                <p><%# Eval("Description") %></p>
                                <a class="btn-slide mt-2" href='<%# Eval("LinkUrl") %>'>
                                    <i class="fa fa-arrow-right"></i><span>Read More</span>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>

    <!-- Testimonials Dynamic Section -->
   <%-- <div class="container-xxl py-5">
        <div class="container py-5">
            <div class="text-center">
                <h6 class="text-secondary text-uppercase">Testimonial</h6>
                <h1 class="mb-0">Our Clients Say!</h1>
            </div>

            <div class="owl-carousel testimonial-carousel">
                <asp:Repeater ID="rptTestimonials" runat="server">
                    <ItemTemplate>
                        <div class="testimonial-item p-4 my-5">
                            <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                            <div class="d-flex align-items-end mb-4">
                                <img class="img-fluid flex-shrink-0" src='<%# Eval("ImageUrl") %>' style="width: 80px; height: 80px;">
                                <div class="ms-4">
                                    <h5 class="mb-1"><%# Eval("ClientName") %></h5>
                                    <p class="m-0"><%# Eval("Profession") %></p>
                                </div>
                            </div>
                            <p class="mb-0"><%# Eval("Message") %></p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>--%>
</asp:Content>



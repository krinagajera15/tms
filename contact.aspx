<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
        <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Contact Us</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

   <!-- Contact Start -->
    <div class="container-fluid overflow-hidden py-5 px-lg-0">
        <div class="container contact-page py-5 px-lg-0">
            <div class="row g-5 mx-lg-0">
                 <div class="container contact-page py-5 px-lg-0">
                     <div class="row g-5 mx-lg-0">
                        <div class="col-md-6 contact-form">
                            <h6 class="text-secondary text-uppercase">Get In Touch</h6>
                            <h1 class="mb-4">Contact For Any Query</h1>
                             <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. <a href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                                <div class="bg-light p-4">
                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                                        
                                             <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                            <div class="row g-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-floating">
                                                        <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                    <div class="form-floating">
                                                       <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5" ></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-12">
                                                   <asp:Button ID="btnSend" runat="server" CssClass="btn btn-primary w-100 py-3" Text="Send Message" OnClick="btnSend_Click" />
                                                </div>
                                            </div>
                                        
                                    </div>
                                </div>
                                <div class="col-md-6 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s">
                                    <div class="position-relative h-100">
                                      <iframe class="position-absolute w-100 h-100" style="object-fit: cover;"
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3718.662109763852!2d72.82966797531684!3d21.15838098286177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be04f7c4cf236b7%3A0x6a19b65c1dcaf149!2sJakatnaka%2C%20Surat%2C%20Gujarat%20395010!5e0!3m2!1sen!2sin!4v1727604190000!5m2!1sen!2sin"
                                            frameborder="0" allowfullscreen="" aria-hidden="false"
                                            tabindex="0">
                                      </iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
   
    <!-- Contact End -->

</asp:Content>


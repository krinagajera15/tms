<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="truckrequest.aspx.cs" Inherits="quote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <!-- Page Header Start -->
    <div class="container-fluid page-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated slideInDown">Truck Request</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="text-white" href="index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a class="text-white" href="#">Pages</a></li>
                    <li class="breadcrumb-item text-white active" aria-current="page">Truck Request</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    <!-- Truck Request -->
    <div class="container mt-5">
            <div class="card shadow">
                    <h1><center>Genarate Truck Request</center></h1>
                <div class="card-body">
                    <div class="mb-3">
                        <label>User Name</label>
                        <asp:TextBox ID="txtid" runat="server" CssClass="form-control"  required="true" />
                    </div>
                    <div class="mb-3">
                        <label>From city</label>
                        <asp:DropDownList ID="ddlfcity" runat="server" CssClass="form-control" required="true" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityID"></asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [CityID], [CityName] FROM [City]"></asp:SqlDataSource>

                    </div>
                    <div class="mb-3">
                        <label>To city</label>
                        <asp:DropDownList ID="ddltcity" runat="server" CssClass="form-control" required="true" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [CityID], [CityName] FROM [City]"></asp:SqlDataSource>
                    </div>
                    <div class="mb-3">
                        <label>Starting Date</label>
                        <asp:TextBox ID="txtsdate" runat="server" TextMode="Date" CssClass="form-control" required="true"/>
                    </div>
                    
                    <div class="mb-3">
                        <label>Ending Date</label>
                        <asp:TextBox ID="txtedate" runat="server" TextMode="Date" CssClass="form-control" required="true" />
                    </div>
                    <div class="mb-3">
                        <label>Number Of Trucks</label>
                        <asp:TextBox ID="Textbox1" runat="server" CssClass="form-control" required="true"/>
                    </div>
                    <div class="mb-3">
                        <label>Remarks</label>
                        <asp:TextBox ID="Textbox2" runat="server" CssClass="form-control" required="true"/>
                    </div>
                    <center><asp:Button ID="Button1" runat="server" Text="Submit" Height="50px" Width="200px" BorderStyle="None" Font-Bold="true" ForeColor="White" BackColor="Red" OnClick="Button1_Click" /></center><br />
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success mt-3 d-block"></asp:Label>
                </div>
            </div>
        </div>
  
    <!-- Truck Request -->
</asp:Content>



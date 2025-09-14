<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="truckdetails.aspx.cs" Inherits="truckdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>My Truck Requests</title>
    <!-- Bootstrap CSS (optional for better design) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container mt-4"></div>
        <h2 class="mb-4">My Truck Requests</h2>

        <asp:GridView ID="gvTrucks" runat="server" AutoGenerateColumns="False" 
            CssClass="table table-bordered table-striped" on
            OnRowCommand="gvTrucks_RowCommand">

            <Columns>
                <asp:BoundField DataField="TR_ID" HeaderText="Truck ID" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" />
                <asp:BoundField DataField="Starting Date" HeaderText="Requested On" 
                                DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="Number Of Trucks" HeaderText="Status" />
                
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:Button ID="btnView" runat="server" 
                            CommandName="ViewTruck" 
                            CommandArgument='<%# Eval("TR_ID") %>' 
                            Text="View" CssClass="btn btn-primary btn-sm"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
     <!-- Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>



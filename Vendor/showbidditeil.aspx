<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="showbidditeil.aspx.cs" Inherits="Vendor_showbidditeil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container mt-4">
            <h2 class="text-center mb-4">My Bid Details</h2>
            
            <asp:Label ID="lblMessage" runat="server" CssClass="table table-bordered"></asp:Label>

            <asp:GridView ID="gvVendorBids" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" OnRowCommand="gvVendorBids_RowCommand" OnRowDataBound="gvVendorBids_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="TR_ID" HeaderText="Truck Request ID" />
                    <asp:BoundField DataField="BidAmount" HeaderText="Bid Amount" />
                    <asp:BoundField DataField="NoOfTrucks" HeaderText="No. of Trucks" />
                    <asp:TemplateField HeaderText="status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" 
                                Text='<%# Eval("status") %>' 
                                CssClass='<%# (Eval("status").ToString()=="Approved"?"status-Approved":
                                              (Eval("status").ToString()=="Rejected"?"status-Rejected":"status-Pending")) %>'>
                            </asp:Label>
                        </ItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnAddVehicle" runat="server" Text="Add Vehicle/Driver" 
                                CommandName="AddVehicle" CommandArgument='<%# Eval("TR_ID") %>'  />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
</asp:Content>



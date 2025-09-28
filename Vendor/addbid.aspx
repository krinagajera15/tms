<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="addbid.aspx.cs" Inherits="Vendor_addbid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <!-- bid Request -->
    <div class="container mt-5">
            <div class="card shadow">
                    <h1><center>Add Bid Amount</center></h1>
                <div class="card-body">
                    <div class="mb-3">
                        <label for="ddlvid">Vendor ID</label>
                <asp:TextBox ID="ddlvid" runat="server" CssClass="form-control"></asp:TextBox>
                        <div class="mb-3">
                        <label for="ddltrid">Truck ID</label>
                        <asp:DropDownList ID="ddltrid" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="TR_ID" DataValueField="TR_ID"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [TR_ID] FROM [TR_REQUEST]"></asp:SqlDataSource>
                    </div>
                    </div>
                    <div class="mb-3">
                       <label for="ddlnoftr">No of Trucks</label>
                <asp:DropDownList ID="ddlnoftr" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="NO_OF_TRUCK" DataValueField="NO_OF_TRUCK" >
                </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [NO_OF_TRUCK] FROM [TR_REQUEST] WHERE ([TR_ID] = @TR_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddltrid" Name="TR_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="mb-3">
                         <label for="txtBidAmount">Bid Amount</label>
                <asp:TextBox ID="txtBidAmount" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
                    </div>
                    
                    <div class="mb-3">
                        <asp:CheckBox ID="chkConfirm" runat="server" Text=" I confirm this bid" />
                    </div>
                    <div class="mb-3">
                        <center><asp:Button ID="btnSubmit" runat="server" Text="Save & Continue"  Height="50px" Width="200px" BorderStyle="None" Font-Bold="true" ForeColor="White" BackColor="#0d6efd" OnClick="btnSubmit_Click" /></center>
                    </div>
                    <div class="mb-3">
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
  
    <!-- bid Request -->
</asp:Content>



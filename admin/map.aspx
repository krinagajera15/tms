<%@ Page Language="C#" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="Vendor_map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor Parcel Update</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container mt-5">
            <h3 class="mb-4">Vendor Panel - Update Parcel Status</h3>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label>Truck Request ID</label>
                    <asp:TextBox ID="txttrid" CssClass="form-control" runat="server" />
                </div>
                <div class="col-md-6">
                    <label>Vendor ID</label>
                    <asp:TextBox ID="txtVendorId" CssClass="form-control" runat="server" />
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-3">
                    <label>Country</label>
                    <asp:DropDownList ID="ddlCountry" CssClass="form-control" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource1" DataTextField="CountryName" DataValueField="CountryID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [CountryID], [CountryName] FROM [Country]"></asp:SqlDataSource>
                </div>
                <div class="col-md-3">
                    <label>State</label>
                    <asp:DropDownList ID="ddlState" CssClass="form-control" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource2" DataTextField="StateName" DataValueField="StateID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [StateID], [StateName], [CountryID] FROM [State] WHERE ([CountryID] = @CountryID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlCountry" Name="CountryID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-md-3">
                    <label>City</label>
                    <asp:DropDownList ID="ddlCity" CssClass="form-control" AutoPostBack="True" runat="server" DataSourceID="SqlDataSource3" DataTextField="CityName" DataValueField="CityID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [CityID], [CityName], [StateID] FROM [City] WHERE ([StateID] = @StateID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlState" Name="StateID" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div class="col-md-3">
                    <label>Pincode</label>
                    <asp:DropDownList ID="ddlPincode" CssClass="form-control" runat="server" DataSourceID="SqlDataSource4" DataTextField="Pincode" DataValueField="PincodeID"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [PincodeID], [Pincode], [CityID] FROM [Pincode] WHERE ([CityID] = @CityID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlCity" Name="CityID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label>Status</label>
                    <asp:DropDownList ID="ddlStatus" CssClass="form-control" runat="server">
                        <asp:ListItem>Order Placed</asp:ListItem>
                        <asp:ListItem>Dispatched</asp:ListItem>
                        <asp:ListItem>In Transit</asp:ListItem>
                        <asp:ListItem>Out for Delivery</asp:ListItem>
                        <asp:ListItem>Delivered</asp:ListItem>
                    </asp:DropDownList>
                </div>
                 <div class="col-md-6">
                    <label>Updatetime</label>
                      <asp:TextBox ID="txtdate" ReadOnly="true" CssClass="form-control" runat="server" />
                <br />
                <div class="col-md-6 d-flex align-items-end">
                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-success" Text="Save Update" 
                        OnClick="btnSave_Click" />
                </div>
            </div>

            <asp:Label ID="lblMsg" runat="server" CssClass="text-success fw-bold"></asp:Label>
        </div>
    </form>
</body>
</html>

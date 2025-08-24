<%@ Page Language="C#" AutoEventWireup="true" CodeFile="biddetails.aspx.cs" Inherits="biddetails" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bid Details Master</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

    <form id="form1" runat="server" class="w-full max-w-4xl bg-white p-6 rounded-2xl shadow-lg">
        <h2 class="text-2xl font-bold mb-6 text-gray-700">Bid Details Master</h2>

        <!-- Vendor ID -->
        <div class="mb-4">
            <label class="block text-gray-600 font-semibold mb-2">Select Vendor</label>
            <asp:DropDownList ID="ddlVendor" runat="server" CssClass="w-full p-2 border rounded-md">
            </asp:DropDownList>
        </div>

        <!-- No of Trucks -->
        <div class="mb-4">
            <label class="block text-gray-600 font-semibold mb-2">Number of Trucks</label>
            <asp:TextBox ID="txtNoOfTruck" runat="server" CssClass="w-full p-2 border rounded-md" placeholder="Enter No. of Trucks"></asp:TextBox>
        </div>

        <!-- Truck Request ID -->
        <div class="mb-4">
            <label class="block text-gray-600 font-semibold mb-2">Truck Request ID</label>
            <asp:DropDownList ID="ddlTRID" runat="server" CssClass="w-full p-2 border rounded-md">
            </asp:DropDownList>
        </div>

        <!-- Bid Amount -->
        <div class="mb-4">
            <label class="block text-gray-600 font-semibold mb-2">Bid Amount</label>
            <asp:TextBox ID="txtBidAmount" runat="server" CssClass="w-full p-2 border rounded-md" placeholder="Enter Bid Amount"></asp:TextBox>
        </div>

        <!-- Bid Status -->
        <div class="mb-4">
            <label class="block text-gray-600 font-semibold mb-2">Bid Status</label>
            <asp:DropDownList ID="ddlBidStatus" runat="server" CssClass="w-full p-2 border rounded-md">
                <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                <asp:ListItem Text="Accepted" Value="Accepted"></asp:ListItem>
                <asp:ListItem Text="Rejected" Value="Rejected"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Action Buttons -->
        <div class="flex space-x-4 mb-6">
            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="bg-green-500 text-white px-4 py-2 rounded-lg hover:bg-green-600" />
           <%-- <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="bg-red-500 text-white px-4 py-2 rounded-lg hover:bg-red-600" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="bg-gray-500 text-white px-4py-2 rounded-lg hover:bg-gray-600" />--%> 
        </div>

      <%--  <!-- Data Grid -->
        <div class="mt-6 overflow-x-auto">
            <asp:GridView ID="gvBids" runat="server" AutoGenerateColumns="False" CssClass="w-full text-left border border-gray-300">
                <Columns>
                    <asp:BoundField DataField="BidID" HeaderText="Bid ID" />
                    <asp:BoundField DataField="VendorID" HeaderText="Vendor ID" />
                    <asp:BoundField DataField="NoOfTruck" HeaderText="No. of Trucks" />
                    <asp:BoundField DataField="TR_ID" HeaderText="Truck Request ID" />
                    <asp:BoundField DataField="BidAmount" HeaderText="Bid Amount" />
                    <asp:BoundField DataField="BidStatus" HeaderText="Bid Status" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>--%>
    </form>

</body>
</html>
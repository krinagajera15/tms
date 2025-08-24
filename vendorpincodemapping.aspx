<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vendorpincodemapping.aspx.cs" Inherits="vendorpincodemapping" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vendor Pincode Mapping Master</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

    <form id="form1" runat="server" class="w-full max-w-4xl bg-white p-6 rounded-2xl shadow-lg">
        <h2 class="text-2xl font-bold mb-6 text-gray-700">Vendor Pincode Mapping Master</h2>

        <!-- Vendor Selection -->
        <div class="mb-4">
            <label class="block text-gray-600 font-semibold mb-2">Select Vendor</label>
            <asp:DropDownList ID="ddlVendor" runat="server" CssClass="w-full p-2 border rounded-md">
            </asp:DropDownList>
        </div>

        <!-- Pincode -->
        <div class="mb-4">
            <label class="block text-gray-600 font-semibold mb-2">Enter Pincode</label>
            <asp:TextBox ID="txtPincode" runat="server" CssClass="w-full p-2 border rounded-md" placeholder="Enter Pincode"></asp:TextBox>
        </div>

        <!-- Status -->
        <div class="mb-4">
            <label class="block text-gray-600 font-semibold mb-2">Status</label>
            <asp:DropDownList ID="ddlStatus" runat="server" CssClass="w-full p-2 border rounded-md">
                <asp:ListItem Value="Active">Active</asp:ListItem>
                <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Buttons -->
        <div class="flex space-x-4">
            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="bg-green-500 text-white px-4 py-2 rounded-lg hover:bg-green-600" />
            <%--<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="bg-red-500 text-white px-4 py-2 rounded-lg hover:bg-red-600" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="bg-gray-500 text-white px-4 py-2 rounded-lg hover:bg-gray-600" />--%>
        </div>

       <%-- <!-- Data Grid -->
        <div class="mt-6">
            <asp:GridView ID="gvMapping" runat="server" AutoGenerateColumns="False" CssClass="w-full text-left border-collapse">
                <Columns>
                    <asp:BoundField DataField="MappingID" HeaderText="ID" />
                    <asp:BoundField DataField="VendorName" HeaderText="Vendor" />
                    <asp:BoundField DataField="Pincode" HeaderText="Pincode" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>--%>

    </form>
</body>
</html>
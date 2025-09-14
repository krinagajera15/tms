<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cutoff.aspx.cs" Inherits="cutoff" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cutoff Master</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100">
    <form id="form1" runat="server" class="max-w-lg mx-auto mt-10 bg-white shadow-md rounded-lg p-6">
        <h2 class="text-xl font-bold mb-4 text-center">Cutoff Master</h2>

        <!-- From City -->
        <div class="mb-4">
            <label class="block mb-1 font-semibold">From City</label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="w-full border rounded px-3 py-2" Placeholder="Enter From City" DataSourceID="SqlDataSource1" DataTextField="CityName" DataValueField="CityName"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [CityName] FROM [City]"></asp:SqlDataSource>
        </div>

        <!-- To City -->
        <div class="mb-4">
            <label class="block mb-1 font-semibold">To City</label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="w-full border rounded px-3 py-2" Placeholder="Enter To City" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityName"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [CityName] FROM [City]"></asp:SqlDataSource>
        </div>

        <!-- Cutoff Time -->
        <div class="mb-4">
            <label class="block mb-1 font-semibold">Cutoff Time</label>
           <asp:TextBox ID="txtCutoff" runat="server" TextMode="Time" CssClass="w-full border rounded px-3 py-2"></asp:TextBox>
        </div>

        <!-- Status -->
        <div class="mb-4 flex items-center">
            <asp:CheckBox ID="chkStatus" runat="server" CssClass="mr-2" />
            <label for="chkStatus" class="font-semibold">Active</label>
        </div>

        <!-- Button -->
        <div class="text-center">
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" 
                CssClass="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600" />
        </div>

        <!-- Message -->
        <div class="mt-4 text-center">
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" CssClass="font-semibold"></asp:Label>
        </div>
    </form>
</body>
</html>

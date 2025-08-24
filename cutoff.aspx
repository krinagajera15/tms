<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cutoff.aspx.cs" Inherits="cutoff" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cutoff Master</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet" />
</head>
<body class="bg-gray-100 p-8">
    <form id="form1" runat="server" class="max-w-4xl mx-auto bg-white shadow-lg p-6 rounded-xl">
        
        <h2 class="text-2xl font-bold mb-6 text-center text-indigo-600">Cutoff Master</h2>

        <div class="mb-4">
            <label class="block text-gray-700 mb-2">From City</label>
            <asp:DropDownList ID="ddlType" runat="server" CssClass="w-full border p-2 rounded">
                <asp:ListItem>---Selecte City---</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Ahemdabad</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Haidrabad</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                
            </asp:DropDownList>
        </div>

        
        <div class="mb-4">
            <label class="block text-gray-700 mb-2">To City</label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="w-full border p-2 rounded">
                <asp:ListItem>---Selecte City---</asp:ListItem>
                <asp:ListItem>Surat</asp:ListItem>
                <asp:ListItem>Ahemdabad</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
                <asp:ListItem>Haidrabad</asp:ListItem>
                <asp:ListItem>Chennai</asp:ListItem>
                
            </asp:DropDownList>
        </div>

     

        <div class="mb-4">
    <label class="block text-gray-700 mb-2">Cutoff Time</label>
    <div class="flex space-x-2">
        <!-- Hours -->
        <asp:DropDownList ID="ddlHour" runat="server" CssClass="border p-2 rounded">
        </asp:DropDownList>

        <!-- Minutes -->
        <asp:DropDownList ID="ddlMinute" runat="server" CssClass="border p-2 rounded">
        </asp:DropDownList>

        <!-- AM/PM -->
        <asp:DropDownList ID="ddlAmPm" runat="server" CssClass="border p-2 rounded">
            <asp:ListItem Text="AM" Value="AM"></asp:ListItem>
            <asp:ListItem Text="PM" Value="PM"></asp:ListItem>
        </asp:DropDownList>
    </div>
</div>
        <div class="mb-4">
    <label class="block text-gray-700 mb-2">Status</label>
    <asp:DropDownList ID="ddlStatus" runat="server" CssClass="w-full border p-2 rounded">
        <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
        <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
    </asp:DropDownList>
</div>


      
        <!-- Save Button -->
        <div class="text-center">
            <asp:Button ID="btnSave" runat="server" Text="Save Cutoff" CssClass="bg-indigo-600 text-white px-6 py-2 rounded hover:bg-indigo-700" OnClick="btnSave_Click" />
        </div>

      <%--  <!-- Grid View -->
        <div class="mt-6">
            <asp:GridView ID="gvCutoff" runat="server" CssClass="w-full border-collapse border border-gray-300"
                AutoGenerateColumns="False" DataKeyNames="CutoffID">
                <Columns>
                    <asp:BoundField DataField="ModuleName" HeaderText="Module" />
                    <asp:BoundField DataField="CutoffType" HeaderText="Type" />
                    <asp:BoundField DataField="CutoffTime" HeaderText="Cutoff Time" />
                    <asp:BoundField DataField="EffectiveDate" HeaderText="Effective Date" DataFormatString="{0:dd-MM-yyyy}" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>--%>
        
    </form>
</body>
</html>
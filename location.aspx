<%@ Page Language="C#" AutoEventWireup="true" CodeFile="location.aspx.cs" Inherits="location" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Address Form</title>
    <style>
        .form-container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
        }
        .form-container label {
            font-weight: bold;
        }
        .form-container input[type="DropDownList"] {
            width: 100%;
            padding: 6px;
            margin: 6px 0 12px 0;
            box-sizing: border-box;
        }
        .form-container input[type="submit"] {
            background-color:red;
            color: white;
            border: none;
            padding: 8px 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div class="form-container">
            <h1>Address Information</h1>

            <label for="txtCountry">Country:</label><br />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CountryName" DataValueField="CountryID"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT DISTINCT [CountryID], [CountryName] FROM [Country]"></asp:SqlDataSource>
            <%--<asp:TextBox ID="txtCountry" runat="server" />--%>
             <br />
            <label for="txtState">State:</label><br />
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="StateName" DataValueField="StateID" AutoPostBack="True"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [StateID], [StateName] FROM [State] WHERE ([CountryID] = @CountryID)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList1" Name="CountryID" PropertyName="SelectedValue" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
            <%--<asp:TextBox ID="txtState" runat="server" />--%>
             <br />
            <label for="txtCity">City:</label><br />
            <asp:DropDownList ID="DropDownList3" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="CityName" DataValueField="CityID"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [CityID], [CityName] FROM [City] WHERE ([StateID] = @StateID)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList2" Name="StateID" PropertyName="SelectedValue" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
            <%--<asp:TextBox ID="txtCity" runat="server" />--%>
             <br />
            <label for="txtPincode">Pincode:</label><br />
            <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Pincode" DataValueField="PincodeID"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [PincodeID], [Pincode] FROM [Pincode] WHERE ([CityID] = @CityID)">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="DropDownList3" Name="CityID" PropertyName="SelectedValue" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
            <%--<asp:TextBox ID="txtPincode" runat="server" />--%>
             <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </div>
    </form>
</body>
</html>

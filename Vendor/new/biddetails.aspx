<%@ Page Language="C#" AutoEventWireup="true" CodeFile="biddetails.aspx.cs" Inherits="Vendor_biddetails" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bid Details</title>
    <style>
        .container {
            width: 450px;
            margin: 40px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background: #f9f9f9;
            font-family: Arial, sans-serif;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        .container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #444;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group select,
        .form-group input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #bbb;
            border-radius: 5px;
        }
        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background: #4CAF50;
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background: #45a049;
        }
        .message {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Bid Details Entry</h2>

            <div class="form-group">
                <label>Truck ID</label>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="TR_ID" DataValueField="TR_ID"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TMSConnectionString %>" 
                    SelectCommand="SELECT [TR_ID] FROM [TR_REQUEST]"></asp:SqlDataSource>
            </div>

            <div class="form-group">
                <label>From City</label>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="FROM_CITY_NAME" DataValueField="FROM_CITY_NAME"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TMSConnectionString %>" 
                    SelectCommand="SELECT [FROM_CITY_NAME] FROM [TR_REQUEST]"></asp:SqlDataSource>
            </div>

            <div class="form-group">
                <label>To City</label>
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="TO_CITY_NAME" DataValueField="TO_CITY_NAME"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TMSConnectionString %>" 
                    SelectCommand="SELECT [TO_CITY_NAME] FROM [TR_REQUEST]"></asp:SqlDataSource>
            </div>

            <div class="form-group">
                <label>No of Trucks</label>
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSource4" DataTextField="NO_OF_TRUCK" DataValueField="NO_OF_TRUCK"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:TMSConnectionString %>" 
                    SelectCommand="SELECT [NO_OF_TRUCK] FROM [TR_REQUEST]"></asp:SqlDataSource>
            </div>

            <div class="form-group">
                <label>Bid Amount</label>
                <asp:TextBox ID="txtBidAmount" runat="server"></asp:TextBox>
            </div>

            <asp:Button ID="btnSaveBid" runat="server" CssClass="btn" Text="Save Bid" OnClick="btnSaveBid_Click" />

            <asp:Label ID="lblMessage" runat="server" CssClass="message" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
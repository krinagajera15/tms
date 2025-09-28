<%@ Page Language="C#" AutoEventWireup="true" CodeFile="total_count.aspx.cs" Inherits="admin_total_count" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Vendor Bids Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
        }

        .row {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .card {
            color: white;
            padding: 30px;
            text-align: center;
            border-radius: 8px;
            margin: 10px;
            flex: 1 0 25%;
            box-shadow: 0px 4px 8px rgba(0,0,0,0.2);
        }

        .card h2 {
            font-size: 32px;
            margin: 0;
        }

        .card p {
            font-size: 18px;
            margin: 5px 0 0;
        }

        /* Colors */
        .approved-card { background-color: #28a745; } /* Green */
        .pending-card { background-color: #ffc107; color: black; }  /* Yellow */
        .rejected-card { background-color: #dc3545; } /* Red */
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="row">
    <!-- Approved Card -->
    <div class="col-md-4">
        <div class="card approved-card">
            <h2><asp:Label ID="lblApproved" runat="server" Text="0"></asp:Label></h2>
            <p>Approved Bids</p>
        </div>
    </div>

    <!-- Pending Card -->
    <div class="col-md-4">
        <div class="card pending-card">
            <h2><asp:Label ID="lblPending" runat="server" Text="0"></asp:Label></h2>
            <p>Pending Bids</p>
        </div>
    </div>

    <!-- Rejected Card -->
    <div class="col-md-4">
        <div class="card rejected-card">
            <h2><asp:Label ID="lblRejected" runat="server" Text="0"></asp:Label></h2>
            <p>Rejected Bids</p>
        </div>
    </div>
</div>
    </div>
    </form>
</body>
</html>

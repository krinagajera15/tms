<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ad_tr_req.aspx.cs" Inherits="admin_ad_tr_req" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Truck Request View</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <h2>Truck Request Records</h2>
            <asp:Button ID="btnLoadData" runat="server" Text="Load Truck Requests" OnClick="btnLoadData_Click" CssClass="btn btn-primary mb-3" /> 
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" CssClass="table table-bordered" />
        </div>
    </form>
</body>
</html>

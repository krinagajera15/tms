<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userregistretion.aspx.cs" Inherits="admin_userregistretion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin - User List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="card shadow-lg">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Registered Users</h4>
                </div>
                <div class="card-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true"
                        CssClass="table table-bordered table-striped"
                        HeaderStyle-CssClass="table-primary" />
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS (optional for components) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

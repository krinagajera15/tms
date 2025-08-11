<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registretion.aspx.cs" Inherits="testreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        .body{
            background-image:url("1.jpg");
        }
        .form-container {
            max-width: 700px;
            margin: auto;
            padding: 30px;
            margin-top: 40px;
            background: #fff;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
        <div class="form-container">
            <h1 class="text-center">User Registration</h1>

            <div class="mb-3">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" required="true" />
            </div>

            <div class="mb-3">
                <label>Full Name</label>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" required="true" />
            </div>

            <div class="mb-3">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" required="true" />
            </div>

            <div class="mb-3">
                <label>Mobile Number</label>
                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" MaxLength="10" TextMode="Phone" required="true" />
            </div>
            <div class="mb-3">
                <asp:FileUpload ID="prophoto" runat="server" CssClass="form-control"/>
            </div>

            <div class="text-center">
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
            </div>
        </div>
    </form>
</body>
</html>

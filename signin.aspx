<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f0f2f5;
            background-image:url("1.jpg");
          
        }
        
        .login-container {
            width: 350px;
            margin: 100px auto;
            padding: 30px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background: #f9f9f9;
            box-shadow: 2px 2px 12px rgba(0,0,0,0.1);
            font-family: Arial;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 25px;
        }
        .login-container input[type=text], 
        .login-container input[type=password] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-container input[type=submit] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
           
        }
        .login-container .error {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Login</h2>
            <asp:TextBox ID="txtemail" runat="server" placeholder="Enter email"></asp:TextBox>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <br />
            <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>
        </div>
    </form>
</body>
</html>
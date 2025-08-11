<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Login Page</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f5f5f5;
            background-image:url("img/1.jpg");
        }
        .login-box {
            width: 350px;
            background: #fff;
            padding: 20px;
            margin: 100px auto;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }
        .login-box input, .login-box button {
            margin-top: 10px;
            padding: 10px;
            margin-left: 18px;
        }
        .links {
            margin-top: 10px;
            text-align: center;
        }
        .links a {
            margin: 5px;
            text-decoration: none;
            color:darkgray;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-box">
            <h1>Sign in</h1>
            
            <asp:TextBox ID="txtEmail" runat="server" Placeholder="Enter Email" Width="278px" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Enter Password" Width="281px" />
        <br /><br /><br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" Width="315px" />
         
            <div class="links">
                <a href="registretion.aspx">Don't have an account? Sign Up</a><br /><br />
                <a href="ForgotPassword.aspx">Forgot Password?</a>
            </div>
        </div>
    </form>
</body>
</html>

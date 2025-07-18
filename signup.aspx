<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="De1reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f0f2f5;
            background-image:url("1.jpg");
          
        }
        .container {
            width: 400px;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            box-shadow: 0 0 10px #ccc;
            border-radius: 10px;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .form-control label {
            display: block;
            margin-bottom: 5px;
        }
        .form-control input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .btn-submit {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
            <h2>Sign up</h2>

            <div class="form-control">
                <label>User Name</label>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" />
                
            </div>

            <div class="form-control">
                <label>Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" />
               
            </div>

            <div class="form-control">
                <label>Email</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" />
            </div>
         
        <div class="form-control">
    <div style="display: flex; justify-content: space-between;">
        
        <div style="flex: 1;">
            <label>Country</label>
            <asp:DropDownList ID="DropDownList11" runat="server" CssClass="form-control" Width="150" Height="45">
                <asp:ListItem>SELECT COUNTRY</asp:ListItem>
                <asp:ListItem>INDIA</asp:ListItem>
                <asp:ListItem>AMERICA</asp:ListItem>
                <asp:ListItem>RUSSIA</asp:ListItem>
                <asp:ListItem>CHINA</asp:ListItem>
                <asp:ListItem>JAPAN</asp:ListItem>
                <asp:ListItem>AUSTRALIA</asp:ListItem>
                <asp:ListItem>GERMANY</asp:ListItem>
            </asp:DropDownList>
        </div>

        
        <div style="flex: 1;">
            <label>State</label>
            <asp:DropDownList ID="DropDownList12" runat="server" CssClass="form-control" Width="150" Height="45">
                <asp:ListItem>SELECT STATE</asp:ListItem>
                <asp:ListItem>GUJARAT</asp:ListItem>
                <asp:ListItem>RAJASTHAN</asp:ListItem>
                <asp:ListItem>PUNJAB</asp:ListItem>
                <asp:ListItem>CHHATTISGARH</asp:ListItem>
                <asp:ListItem>TELANGANA</asp:ListItem>
                <asp:ListItem>KERALA</asp:ListItem>
                <asp:ListItem>JAMMU-KASHMIR</asp:ListItem>
            </asp:DropDownList>
            </div>
            <br />
            <br />
        </div>

           <label>City</label>
            <asp:DropDownList ID="DropDownList1" runat="server"  CssClass="form-control" Width="150" Height="45">
                <asp:ListItem>SELECT CITY</asp:ListItem>
                <asp:ListItem>SURAT</asp:ListItem>
                <asp:ListItem>AHEMDABAD</asp:ListItem>
                <asp:ListItem>RAJKOT</asp:ListItem>
                <asp:ListItem>JUNAGADH</asp:ListItem>
                <asp:ListItem>KACHA</asp:ListItem>
                <asp:ListItem>DANG</asp:ListItem>
                <asp:ListItem>GANDHINAGAR</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </div>



            <asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="btn-submit" Font-Bold="true" Font-Size="Large" OnClick="btnSubmit_Click" />
       </div>

        
       
    </form>
</body>
</html>

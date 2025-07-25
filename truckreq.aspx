<%@ Page Language="C#" AutoEventWireup="true" CodeFile="truckreq.aspx.cs" Inherits="truckreq" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Truck Request Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="card shadow">
                <div class="card-header bg-primary text-white">
                    <h4>Genarate Truck Request</h4>
                </div>
                <div class="card-body">
                    <div class="mb-3">
                        <label>User Name</label>
                        <asp:TextBox ID="txtid" runat="server" CssClass="form-control"  required="true" />
                    </div>
                    <div class="mb-3">
                        <label>From city</label>
                        <asp:TextBox ID="txtfcity" runat="server" CssClass="form-control" required="true"/>
                    </div>
                    <div class="mb-3">
                        <label>To city</label>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="form-control" required="true"/>
                    </div>
                    <div class="mb-3">
                        <label>Starting Date</label>
                        <asp:TextBox ID="txtsdate" runat="server" TextMode="Date" CssClass="form-control" required="true"/>
                    </div>
                    
                    <div class="mb-3">
                        <label>Ending Date</label>
                        <asp:TextBox ID="txtedate" runat="server" TextMode="Date" CssClass="form-control" required="true" />
                    </div>
                    <div class="mb-3">
                        <label>Number Of Trucks</label>
                        <asp:TextBox ID="Textbox1" runat="server" CssClass="form-control" required="true"/>
                    </div>
                    <div class="mb-3">
                        <label>Remarks</label>
                        <asp:TextBox ID="Textbox2" runat="server" CssClass="form-control" required="true"/>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /><br />
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success mt-3 d-block"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="country_form.aspx.cs" Inherits="Vendor_country_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Country</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h3 class="mb-0">Add Country</h3>
                        </div>
                         <div class="card-body">
                            <div class="form-group">
                                <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control" placeholder="Enter country name"></asp:TextBox>
                            </div>
                            <div class="form-group form-check">
                                <asp:CheckBox ID="chkStatus" CssClass="form-check-input" runat="server" Text="Active" Checked="true" />
                            </div>
                             <br />
                             <br />
                            <div class="form-group">
                                <asp:Button ID="btnSave" CssClass="btn btn-success btn-block" runat="server" Text="Save Country" OnClick="btnSave_Click" />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblMessage" CssClass="text-success" runat="server" ForeColor="Green" />
                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- Bootstrap JS & dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    </div>
    </form>
</body>
</html>

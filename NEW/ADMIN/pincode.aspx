<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pincode.aspx.cs" Inherits="admin_pincode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Pincode</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow">
                        <div class="card-header bg-primary text-white">
                            <h3 class="mb-0">Add pincode</h3>
                        </div>
                            <div class="card-body">
                            <div class="form-group">
                                <asp:DropDownList ID="ddlstate" CssClass="form-control" runat="server" />
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtpin" CssClass="form-control" runat="server" placeholder="Enter Pincode"></asp:TextBox>
                            </div>
                            <div class="form-group form-check">
                                <asp:CheckBox ID="chkStatus" CssClass="form-check-input" runat="server" Text="Active" Checked="true" />
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <asp:Button ID="btnSave" CssClass="btn btn-success btn-block" runat="server" Text="Save State" OnClick="btnSave_Click" />
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblMessage" CssClass="text-success" runat="server" />
                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

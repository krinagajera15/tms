<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="drivervehical.aspx.cs" Inherits="Vendor_drivervehical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <title>Driver & Vehicle Details</title>
    <style>
        .form-card {
            max-width: 600px;
            margin: 30px auto;
            padding: 25px;
            background: linear-gradient(135deg, #f8f9fa, #e9ecef);
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        .form-title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #343a40;
        }
        .form-group {
            margin-top: 15px;
        }
        .form-label {
            font-weight: 600;
            color: #495057;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ced4da;
            margin-top: 5px;
            transition: 0.3s;
        }
        .form-control:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0,123,255,0.5);
        }
        .btn-custom {
            padding: 10px 20px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-primary {
            background: #007bff;
            color: white;
        }
        .btn-primary:hover {
            background: #0056b3;
        }
        .btn-secondary {
            background: #6c757d;
            color: white;
        }
        .btn-secondary:hover {
            background: #495057;
        }
        .message {
            margin-top: 15px;
            text-align: center;
            font-size: 16px;
            font-weight: 600;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="form-card">
        <div class="form-title">🚛 Driver & Vehicle Form</div>
        <hr />
         <div class="form-group">
            <label class="form-label">Truck Id</label>
            <asp:TextBox ID="txttrid" runat="server" CssClass="form-control" placeholder="Enter Driver Name"></asp:TextBox>
        </div>
         <div class="form-group">
            <label class="form-label">Vendor Id</label>
            <asp:TextBox ID="txtvid" runat="server" CssClass="form-control" placeholder="Enter Driver Name"></asp:TextBox>
        </div>
        <div class="form-group">
            <label class="form-label">Driver Name</label>
            <asp:TextBox ID="txtDriverName" runat="server" CssClass="form-control" placeholder="Enter Driver Name"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="form-label">Vehicle Number</label>
            <asp:TextBox ID="txtVehicleNo" runat="server" CssClass="form-control" placeholder="Enter Vehicle Number"></asp:TextBox>
        </div>

        <div class="form-group">
            <label class="form-label">Driver Contact</label>
            <asp:TextBox ID="txtDriverContact" runat="server" CssClass="form-control" placeholder="Enter Driver Contact" TextMode="Phone"></asp:TextBox>
        </div>

        <div style="margin-top:20px;text-align:center;">
            <asp:Button ID="btnSave" runat="server" Text="💾 Save" CssClass="btn-custom btn-primary" OnClick="btnSave_Click" />
            &nbsp;
            <asp:Button ID="btnClear" runat="server" Text="🧹 Clear" CssClass="btn-custom btn-secondary" OnClick="btnClear_Click" />
        </div>

        <div class="message">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>



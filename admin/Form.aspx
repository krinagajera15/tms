<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="admin_Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Add Location</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <center><div class="container mt-4">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="country-tab" data-bs-toggle="tab" data-bs-target="#country" type="button" role="tab">Country</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="state-tab" data-bs-toggle="tab" data-bs-target="#state" type="button" role="tab">State</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="city-tab" data-bs-toggle="tab" data-bs-target="#city" type="button" role="tab">City</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="pincode-tab" data-bs-toggle="tab" data-bs-target="#pincode" type="button" role="tab">Pincode</button>
        </li>
    </ul>

    <div class="tab-content mt-3" id="myTabContent">
        <div class="tab-pane fade show active" id="country" role="tabpanel">
            <%-- Country form content --%>
            <iframe src="country_table.aspx" width="250%" height="600" style="border:none;overflow:hidden;" scrolling="no"></iframe>
        </div>
        <div class="tab-pane fade" id="state" role="tabpanel">
            <%-- State form content --%>
            <iframe src="State_Table.aspx" width="250%" height="600" style="border:none; overflow:hidden;" scrolling="no"></iframe>
        </div>
        <div class="tab-pane fade" id="city" role="tabpanel">
            <%-- City form content --%>
            <iframe src="city_table.aspx" width="250%" height="600" style="border:none; overflow:hidden;" scrolling="no"></iframe>
        </div>
        <div class="tab-pane fade" id="pincode" role="tabpanel">
            <%-- Pincode form content --%>
            <iframe src="pincode_form.aspx" width="250%" height="600" style="border:none; overflow:hidden;" scrolling="no"></iframe>
        </div>
    </div>
</div></center>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


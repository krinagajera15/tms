<%@ Page Title="" Language="C#" MasterPageFile="~/Vendor/venodrmaster.master" AutoEventWireup="true" CodeFile="showbid.aspx.cs" Inherits="Vendor_showbid" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <title>Bid Amount Entry</title>
    <style>
        .container { width: 450px; margin: 40px auto; padding: 20px; border: 1px solid #ccc;
                     border-radius: 12px; box-shadow: 0px 4px 8px rgba(0,0,0,0.1); background: #f9f9f9;
                     font-family: Arial, sans-serif; }
        .container h2 { text-align: center; margin-bottom: 20px; color: #333; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 6px; font-weight: bold; }
        .form-control { width: 100%; padding: 6px 10px; border: 1px solid #ccc; border-radius: 6px; }
        .btn { background-color: #007bff; color: white; border: none; padding: 10px 15px; border-radius: 6px; cursor: pointer; width: 100%; }
        .btn:hover { background-color: #0056b3; }
        .message { margin-top: 10px; text-align: center; font-weight: bold; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="container">
            <h2>Enter Bid Amount</h2>

            <!-- Truck ID -->
            <div class="form-group">
                <label for="ddltrid">Truck ID</label>
                <asp:DropDownList ID="ddltrid" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="TR_ID" DataValueField="TR_ID"></asp:DropDownList>
                    
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [TR_ID] FROM [TR_REQUEST]"></asp:SqlDataSource>
                    
            </div>

            <!-- Vendor ID -->
            <div class="form-group">
                <label for="ddlvid">Vendor ID</label>
                <asp:TextBox ID="ddlvid" runat="server" CssClass="form-control"></asp:TextBox>
              
            </div>

            <!-- No of Trucks -->
            <div class="form-group">
                <label for="ddlnoftr">No of Trucks</label>
                <asp:DropDownList ID="ddlnoftr" CssClass="form-control" runat="server"
                    DataSourceID="SqlDataSource3" DataTextField="NO_OF_TRUCK" DataValueField="NO_OF_TRUCK">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [NO_OF_TRUCK] FROM [TR_REQUEST] WHERE ([TR_ID] = @TR_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddltrid" Name="TR_ID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
              
            </div>

            <!-- Bid Amount -->
            <div class="form-group">
                <label for="txtBidAmount">Bid Amount</label>
                <asp:TextBox ID="txtBidAmount" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
            </div>

            <!-- Checkbox -->
            <div class="form-group">
                <asp:CheckBox ID="chkConfirm" runat="server" Text=" I confirm this bid" />
            </div>

            <!-- Save button -->
            <div class="form-group">
                <asp:Button ID="btnSubmit" runat="server" Text="Save & Continue" CssClass="btn" OnClick="btnSubmit_Click" />
            </div>

            <!-- Message -->
            <div class="message">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


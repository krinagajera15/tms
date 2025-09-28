<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="userdata.aspx.cs" Inherits="admin_userdata" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container mt-4">
            <h2 class="text-center mb-4">Registered User</h2>
         <asp:gridview runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="U_ID" DataSourceID="SqlDataSource1" PageSize="5" >
             <Columns>
                 <asp:BoundField DataField="U_ID" HeaderText="U_ID" InsertVisible="False" ReadOnly="True" SortExpression="U_ID" />
                 <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                 <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                 <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                 <asp:BoundField DataField="MobileNumber" HeaderText="MobileNumber" SortExpression="MobileNumber" />
                 <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                 <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                 <asp:CommandField ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" ShowEditButton="True" UpdateImageUrl="~/img/update.png"  ControlStyle-Height="30" ControlStyle-Width="30" />
                 <asp:CommandField ButtonType="Image" DeleteImageUrl="~/img/delet.png" ShowDeleteButton="True"  ControlStyle-Height="30" ControlStyle-Width="30" />
             </Columns>
            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [USER_REGISTRETION] WHERE [U_ID] = @original_U_ID AND [Email] = @original_Email AND [FullName] = @original_FullName AND [Password] = @original_Password AND [MobileNumber] = @original_MobileNumber AND [Country] = @original_Country AND [State] = @original_State" InsertCommand="INSERT INTO [USER_REGISTRETION] ([Email], [FullName], [Password], [MobileNumber], [Country], [State]) VALUES (@Email, @FullName, @Password, @MobileNumber, @Country, @State)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [USER_REGISTRETION]" UpdateCommand="UPDATE [USER_REGISTRETION] SET [Email] = @Email, [FullName] = @FullName, [Password] = @Password, [MobileNumber] = @MobileNumber, [Country] = @Country, [State] = @State WHERE [U_ID] = @original_U_ID AND [Email] = @original_Email AND [FullName] = @original_FullName AND [Password] = @original_Password AND [MobileNumber] = @original_MobileNumber AND [Country] = @original_Country AND [State] = @original_State">
                <DeleteParameters>
                    <asp:Parameter Name="original_U_ID" Type="Int32" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_FullName" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_MobileNumber" Type="Decimal" />
                    <asp:Parameter Name="original_Country" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="FullName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="MobileNumber" Type="Decimal" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="FullName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="MobileNumber" Type="Decimal" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="original_U_ID" Type="Int32" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_FullName" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_MobileNumber" Type="Decimal" />
                    <asp:Parameter Name="original_Country" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
     </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


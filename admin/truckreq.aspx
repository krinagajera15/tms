<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="truckreq.aspx.cs" Inherits="admin_truckreq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <div class="container mt-4">
            <h2 class="text-center mb-4">Registered User</h2>
         <asp:gridview runat="server" CssClass="table table-bordered" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="TR_ID" DataSourceID="SqlDataSource1" PageSize="5">
             <Columns>
                 <asp:BoundField DataField="TR_ID" HeaderText="TR_ID" InsertVisible="False" ReadOnly="True" SortExpression="TR_ID" />
                 <asp:BoundField DataField="USER_NAME" HeaderText="USER_NAME" SortExpression="USER_NAME" />
                 <asp:BoundField DataField="FROM_CITY_NAME" HeaderText="FROM_CITY_NAME" SortExpression="FROM_CITY_NAME" />
                 <asp:BoundField DataField="TO_CITY_NAME" HeaderText="TO_CITY_NAME" SortExpression="TO_CITY_NAME" />
                 <asp:BoundField DataField="TR_STARTDATE" HeaderText="TR_STARTDATE" SortExpression="TR_STARTDATE" />
                 <asp:BoundField DataField="TR_ENDDATE" HeaderText="TR_ENDDATE" SortExpression="TR_ENDDATE" />
                 <asp:BoundField DataField="NO_OF_TRUCK" HeaderText="NO_OF_TRUCK" SortExpression="NO_OF_TRUCK" />
                 <asp:BoundField DataField="REMARKS" HeaderText="REMARKS" SortExpression="REMARKS" />
                 <asp:CommandField ButtonType="Image" CancelImageUrl="~/img/cancel.png" EditImageUrl="~/img/edit.png" ShowEditButton="True" UpdateImageUrl="~/img/update.png" ControlStyle-Height="30" ControlStyle-Width="30"/>
                 <asp:CommandField ButtonType="Image" DeleteImageUrl="~/img/delet.png" ShowDeleteButton="True" ControlStyle-Height="30" ControlStyle-Width="30" />
             </Columns>
            </asp:gridview>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [TR_REQUEST] WHERE [TR_ID] = @original_TR_ID AND [USER_NAME] = @original_USER_NAME AND [FROM_CITY_NAME] = @original_FROM_CITY_NAME AND [TO_CITY_NAME] = @original_TO_CITY_NAME AND [TR_STARTDATE] = @original_TR_STARTDATE AND [TR_ENDDATE] = @original_TR_ENDDATE AND [NO_OF_TRUCK] = @original_NO_OF_TRUCK AND [REMARKS] = @original_REMARKS" InsertCommand="INSERT INTO [TR_REQUEST] ([USER_NAME], [FROM_CITY_NAME], [TO_CITY_NAME], [TR_STARTDATE], [TR_ENDDATE], [NO_OF_TRUCK], [REMARKS]) VALUES (@USER_NAME, @FROM_CITY_NAME, @TO_CITY_NAME, @TR_STARTDATE, @TR_ENDDATE, @NO_OF_TRUCK, @REMARKS)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TR_REQUEST]" UpdateCommand="UPDATE [TR_REQUEST] SET [USER_NAME] = @USER_NAME, [FROM_CITY_NAME] = @FROM_CITY_NAME, [TO_CITY_NAME] = @TO_CITY_NAME, [TR_STARTDATE] = @TR_STARTDATE, [TR_ENDDATE] = @TR_ENDDATE, [NO_OF_TRUCK] = @NO_OF_TRUCK, [REMARKS] = @REMARKS WHERE [TR_ID] = @original_TR_ID AND [USER_NAME] = @original_USER_NAME AND [FROM_CITY_NAME] = @original_FROM_CITY_NAME AND [TO_CITY_NAME] = @original_TO_CITY_NAME AND [TR_STARTDATE] = @original_TR_STARTDATE AND [TR_ENDDATE] = @original_TR_ENDDATE AND [NO_OF_TRUCK] = @original_NO_OF_TRUCK AND [REMARKS] = @original_REMARKS">
                <DeleteParameters>
                    <asp:Parameter Name="original_TR_ID" Type="Int32" />
                    <asp:Parameter Name="original_USER_NAME" Type="String" />
                    <asp:Parameter Name="original_FROM_CITY_NAME" Type="String" />
                    <asp:Parameter Name="original_TO_CITY_NAME" Type="String" />
                    <asp:Parameter Name="original_TR_STARTDATE" Type="String" />
                    <asp:Parameter Name="original_TR_ENDDATE" Type="String" />
                    <asp:Parameter Name="original_NO_OF_TRUCK" Type="Int32" />
                    <asp:Parameter Name="original_REMARKS" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="USER_NAME" Type="String" />
                    <asp:Parameter Name="FROM_CITY_NAME" Type="String" />
                    <asp:Parameter Name="TO_CITY_NAME" Type="String" />
                    <asp:Parameter Name="TR_STARTDATE" Type="String" />
                    <asp:Parameter Name="TR_ENDDATE" Type="String" />
                    <asp:Parameter Name="NO_OF_TRUCK" Type="Int32" />
                    <asp:Parameter Name="REMARKS" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="USER_NAME" Type="String" />
                    <asp:Parameter Name="FROM_CITY_NAME" Type="String" />
                    <asp:Parameter Name="TO_CITY_NAME" Type="String" />
                    <asp:Parameter Name="TR_STARTDATE" Type="String" />
                    <asp:Parameter Name="TR_ENDDATE" Type="String" />
                    <asp:Parameter Name="NO_OF_TRUCK" Type="Int32" />
                    <asp:Parameter Name="REMARKS" Type="String" />
                    <asp:Parameter Name="original_TR_ID" Type="Int32" />
                    <asp:Parameter Name="original_USER_NAME" Type="String" />
                    <asp:Parameter Name="original_FROM_CITY_NAME" Type="String" />
                    <asp:Parameter Name="original_TO_CITY_NAME" Type="String" />
                    <asp:Parameter Name="original_TR_STARTDATE" Type="String" />
                    <asp:Parameter Name="original_TR_ENDDATE" Type="String" />
                    <asp:Parameter Name="original_NO_OF_TRUCK" Type="Int32" />
                    <asp:Parameter Name="original_REMARKS" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>


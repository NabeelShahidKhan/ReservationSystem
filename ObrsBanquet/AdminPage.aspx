<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ObrsBanquet.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
   <div class="row">
               <h1 class="my-4 col-lg-6">Admin  <small>Panel</small></h1>
              </div>
    <div class="jumbotron text-center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataKeyNames="UserID,R_ID" DataSourceID="SqlDataSource1" Width="100%" CellSpacing="2" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="Name"  ReadOnly="True"  HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Mobile"  ReadOnly="True" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="R_ID"  HeaderText="R_ID" InsertVisible="False" ReadOnly="True" SortExpression="R_ID" />
                <asp:BoundField DataField="EventName"  ReadOnly="True" HeaderText="EventName" SortExpression="EventName" />
                <asp:BoundField DataField="Time"  ReadOnly="True" HeaderText="Time" SortExpression="Time" />
                <asp:BoundField DataField="Date" ReadOnly="True" HeaderText="Date" SortExpression="Date" />
                <asp:CheckBoxField DataField="Lock"  HeaderText="Lock" SortExpression="Lock" />
                <asp:BoundField DataField="EventType"  ReadOnly="True" HeaderText="EventType" SortExpression="EventType" />
                <asp:BoundField DataField="NoOfGuest" ReadOnly="True" HeaderText="NoOfGuest" SortExpression="NoOfGuest" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" 
        DeleteCommand="DELETE FROM ReservationEvents FROM ReservationEvents INNER JOIN [User] ON ReservationEvents.UserId = [User].id AND [User].id = @UserId" 
        SelectCommand="SELECT [User].id AS UserID, [User].Name, [User].Mobile, ReservationEvents.id AS R_ID, ReservationEvents.EventName, ReservationEvents.Time, ReservationEvents.Date, ReservationEvents.Lock, ReservationEvents.EventType, ReservationEvents.NoOfGuest FROM ReservationEvents INNER JOIN [User] ON ReservationEvents.UserId = [User].id" 
        UpdateCommand="UPDATE ReservationEvents SET Lock = @Lock Where UserId = @UserID">
            <DeleteParameters>
                <asp:Parameter Name="UserId" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Lock" />
                <asp:Parameter Name="UserID" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        
    </div>

             

  </div>
</asp:Content>

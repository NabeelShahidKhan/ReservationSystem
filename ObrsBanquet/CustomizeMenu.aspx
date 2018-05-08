<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomizeMenu.aspx.cs" Inherits="ObrsBanquet.CustomizeMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <h1 class="my-4 col-lg-6">Reservation  <small>Customize Menu</small></h1>
            <div class="col-lg-6" style="margin-bottom: auto; margin-top: auto">
                <div class="row">
                    <asp:Button ID="Skip" CssClass="btn btn-secondary col-2" runat="server" Text="Skip" OnClick="Skip_Click" />
                    <span class="col-1"></span>
                    <asp:Button ID="Submit" CssClass="btn btn-primary col-4" runat="server" Text="Submit" OnClick="Submit_Click" />
                    <span class="col-1"></span>
                    <asp:Button ID="GoNext" Enabled="false" CssClass="btn btn-success col-4" runat="server" Text="Go Next" OnClick="GoNext_Click" />
                </div>
            </div>
        </div>
        <div class="row text-center">
            <asp:Label ID="InfoLable" CssClass="text-info h5 align-content-center" runat="server" Text="Select Any Food and Make your Own Menu.... or Skip to Next Page.."></asp:Label>
        </div>


        <div class="container-fluid" style="margin-left: 20px; margin-right: 20px;">
            <asp:CheckBoxList ID="customMenu" CssClass="cd" CellPadding="5" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="10" BorderColor="WhiteSmoke" TextAlign="Right" Font-Bold="true" DataSourceID="SqlDataSource2" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table" DataTextField="Name" DataValueField="id">
                <asp:ListItem></asp:ListItem>
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT [id], [Name] FROM [food] WHERE ([CategoryId] = @CategoryId)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="CategoryId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div class="container-fluid" style="margin-left: 20px; margin-right: 20px;">
            <asp:CheckBoxList ID="CheckBoxList2" CssClass="cd" CellPadding="5" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="10" BorderColor="WhiteSmoke" TextAlign="Right" Font-Bold="true" DataSourceID="SqlDataSource3" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table" DataTextField="Name" DataValueField="id">
                <asp:ListItem></asp:ListItem>
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT [id], [Name] FROM [food] WHERE ([CategoryId] = @CategoryId)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="CategoryId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div class="container-fluid" style="margin-left: 20px; margin-right: 20px;">
            <asp:CheckBoxList ID="CheckBoxList3" CssClass="cd" CellPadding="5" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="10" BorderColor="WhiteSmoke" TextAlign="Right" Font-Bold="true" DataSourceID="SqlDataSource4" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table" DataTextField="Name" DataValueField="id">
                <asp:ListItem></asp:ListItem>
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT [id], [Name] FROM [food] WHERE ([CategoryId] = @CategoryId)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="4" Name="CategoryId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div class="container-fluid" style="margin-left: 20px; margin-right: 20px;">
            <asp:CheckBoxList ID="CheckBoxList4" CssClass="cd" CellPadding="5" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="10" BorderColor="WhiteSmoke" TextAlign="Right" Font-Bold="true" DataSourceID="SqlDataSource5" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table" DataTextField="Name" DataValueField="id">
                <asp:ListItem></asp:ListItem>
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT [id], [Name] FROM [food] WHERE ([CategoryId] = @CategoryId)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="5" Name="CategoryId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>

        <div class="container-fluid" style="margin-left: 20px; margin-right: 20px;">
            <asp:CheckBoxList ID="CheckBoxList5" CssClass="cd" CellPadding="5" runat="server" Width="100%" BorderStyle="Solid" BorderWidth="10" BorderColor="WhiteSmoke" TextAlign="Right" Font-Bold="true" DataSourceID="SqlDataSource6" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Table" DataTextField="Name" DataValueField="id">
                <asp:ListItem></asp:ListItem>
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT [id], [Name] FROM [food] WHERE ([CategoryId] = @CategoryId)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="6" Name="CategoryId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>


    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuPakages.aspx.cs" Inherits="ObrsBanquet.MenuPakages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
               <h1 class="my-4 col-lg-8">Reservation  <small>Pakages & Menus</small></h1>

               <div class="col-lg-4" style="margin-bottom:auto;margin-top:auto">
                        <div class="row">
                            <asp:Button ID="Skip" CssClass="btn btn-secondary col-4" runat="server" Text="Skip" OnClick="Skip_Click" />
                            <span class="col-4"></span>
                            <asp:Button ID="GoNext" Visible="false" CssClass="btn btn-primary col-4" runat="server" Text="Go Next" OnClick="GoNext_Click" />
                        </div>
               </div>
               </div>

               <div class="row text-center">
                   <asp:Label ID="InfoLable" CssClass="text-info h6 align-content-center" runat="server" Text="Select Any Menu.. or Skip to Next Page.."></asp:Label></div>

        <div class="row">
        
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">1 - VIP Choice</a>
                        </h4>
                    </div>
                    <div class="card-body">
            
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id,MenuId1" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <tr>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                    </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="itemPlaceholder" runat="server"></tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT * FROM food INNER JOIN incudedfood ON food.id = incudedfood.FoodID INNER JOIN menus ON incudedfood.MenuID = menus.Menuid AND menus.Menuid = 1 ORDER BY food.CategoryId"></asp:SqlDataSource>
                      </div>
                    <div class="card-footer text-right">
                        <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
                        <asp:Button ID="menuOne" CssClass="btn btn-primary col-3" runat="server" Text="Select" OnClick="menuButton_Click" />
                   
                    </div>
                </div>
            </div>



            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">2 - Super Choice</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <asp:ListView ID="ListView2" runat="server" DataKeyNames="id,MenuId1" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <tr>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                    </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="itemPlaceholder" runat="server"></tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT * FROM food INNER JOIN incudedfood ON food.id = incudedfood.FoodID INNER JOIN menus ON incudedfood.MenuID = menus.Menuid AND menus.Menuid = 2 ORDER BY food.CategoryId"></asp:SqlDataSource>
                    </div>
                    <div class="card-footer text-right">
                        <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
                        <asp:Button ID="menuTwo" CssClass="btn btn-primary" runat="server" Text="Select" OnClick="menuButton_Click" />
                    
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">3 - Choice 3</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <asp:ListView ID="ListView3" runat="server" DataKeyNames="id,MenuId1" DataSourceID="SqlDataSource3">
                            <ItemTemplate>
                                <tr>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                    </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="itemPlaceholder" runat="server"></tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT * FROM food INNER JOIN incudedfood ON food.id = incudedfood.FoodID INNER JOIN menus ON incudedfood.MenuID = menus.Menuid AND menus.Menuid = 3 ORDER BY food.CategoryId"></asp:SqlDataSource>
                    </div>
                    <div class="card-footer text-right">
                       <!-- <a href="#" class="btn btn-primary">Go somewhere</a>-->
                       <asp:Button ID="menuThree" CssClass="btn btn-primary" runat="server" Text="Select" OnClick="menuButton_Click" />
                    
                    </div>
                </div>
            </div>

        </div>

        <div class="row">

            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">4 - VIP Pakage</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <asp:ListView ID="ListView4" runat="server" DataKeyNames="id,MenuId1" DataSourceID="SqlDataSource4">
                            <ItemTemplate>
                                <tr>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                    </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="itemPlaceholder" runat="server"></tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT * FROM food INNER JOIN incudedfood ON food.id = incudedfood.FoodID INNER JOIN menus ON incudedfood.MenuID = menus.Menuid AND menus.Menuid = 4 ORDER BY food.CategoryId"></asp:SqlDataSource>
                    </div>
                    <div class="card-footer text-right">
                      <!--  <a href="#" class="btn btn-primary">Go somewhere</a>-->
                      <asp:Button ID="menuFour" CssClass="btn btn-primary" runat="server" Text="Select" OnClick="menuButton_Click" />
                    
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">5 - Super Pakage 2</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <asp:ListView ID="ListView5" runat="server" DataKeyNames="id,MenuId1" DataSourceID="SqlDataSource5">
                            <ItemTemplate>
                                <tr>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                    </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="itemPlaceholder" runat="server"></tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT * FROM food INNER JOIN incudedfood ON food.id = incudedfood.FoodID INNER JOIN menus ON incudedfood.MenuID = menus.Menuid AND menus.Menuid = 5 ORDER BY food.CategoryId"></asp:SqlDataSource>
                    </div>
                    <div class="card-footer text-right">
                       <!-- <a href="#" class="btn btn-primary">Go somewhere</a>-->
                       <asp:Button ID="menuFive" CssClass="btn btn-primary" runat="server" Text="Select" OnClick="menuButton_Click" />
                    
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">6 - Pakage 6</a>
                        </h4>
                    </div>
                    <div class="card-body">
                        <asp:ListView ID="ListView6" runat="server" DataKeyNames="id,MenuId1" DataSourceID="SqlDataSource6">
                            <ItemTemplate>
                                <tr>
                                    <tr style="">
                                        <td>
                                            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                                        </td>
                                    </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr id="itemPlaceholder" runat="server"></tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:BRsystemDbConnectionString %>" SelectCommand="SELECT * FROM food INNER JOIN incudedfood ON food.id = incudedfood.FoodID INNER JOIN menus ON incudedfood.MenuID = menus.Menuid AND menus.Menuid = 6 ORDER BY food.CategoryId"></asp:SqlDataSource>
                    </div>
                    <div class="card-footer text-right">
                       <!-- <a href="#" class="btn btn-primary">Go somewhere</a>-->
                       <asp:Button ID="menuSix" CssClass="btn btn-primary" runat="server" Text="Select" OnClick="menuButton_Click" />
                    
                    </div>
                </div>
            </div>
        </div>

        <!-- /.row -->

        <!-- 
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="MenuPakage1.aspx">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="MenuPakage2.aspx">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="MenuPakage2.aspx" aria-label="Next">
            <span aria-hidden="true">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>
      -->
    </div>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenuPakages.aspx.cs" Inherits="ObrsBanquet.MenuPakages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <!-- Page Heading -->
        <h1 class="my-4">Reservation<small>Pakages & Menus</small></h1>

        <div class="row">
           
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">VIP Choice</a>
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
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">Super Choice</a>
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
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">Choice 3</a>
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
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>

            </div>

            <div class="row">
            
              <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
    <div class="card-header card-title">
                        <h4 class="card-title">
                            <a href="#">VIP Choice 3</a>
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
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
      

        <div class="col-lg-4 col-sm-6 portfolio-item">
            <div class="card h-100">
                <div class="card-header card-title">
                    <h4 class="card-title">
                        <a href="#">Super Pakage 2</a>
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
                        <a href="#" class="btn btn-primary">Go somewhere</a>
                    </div>
                </div>
            </div>
   
         <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
    <div class="card-header card-title">
                <h4 class="card-title">
                    <a href="#">Pakage 6</a>
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
                        <a href="#" class="btn btn-primary">Go somewhere</a>
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

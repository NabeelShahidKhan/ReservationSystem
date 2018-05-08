<%@ Page Title="Mehandi" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Mhandi.aspx.cs" Inherits="ObrsBanquet.Mhandi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <!-- Page Heading -->

        <div class="row">
            <h1 class="my-4 col-lg-6">Reservation  <small>Mahandi Plan</small></h1>
                    <div class="col-lg-6" style="margin-bottom: auto; margin-top: auto">
                <div class="row">
                   <a  class="btn btn-dark col-3" runat="server" href="Next.aspx">Skip</a>
                     <span class="col-2"></span>
                   <a  class="btn btn-primary col-4" runat="server" href="Next.aspx">Submit</a>
                    </div>
            </div>
    
        </div>

        <div class="row">
            <!--Entrance Start-->
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">

                    <asp:Image ID="Image10" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/e1m.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Entrance One
              </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="E1" Checked="true" runat="server" GroupName="entrance" />
                            Full of Yellow Artifical Flowers with the through of lights from the bottom.Poles are decorated with red curtains
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image7" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/Mehndi-Stage-Decoration.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Entrance Two
              
              </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="E2" runat="server" GroupName="entrance" />

                            Full of Real Flowers(gainda)
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image15" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/mehndi-hall-decoration-2016-7-weddings-eve_l_d93e2d0c5e209d94.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Entrance Three
              
              </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="E3" runat="server" GroupName="entrance" />

                            Yellow and Maroon curtains with stripes of led lights
                        </p>
                    </div>
                </div>
            </div>
            <!--Entrance End-->

            <!--Stage Start-->

            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">

                    <asp:Image ID="Image5" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/Mehndi-Stage-Decoration.jpg" Width="350px" Height="200px" />

                    <div class="card-body">
                        <h4 class="card-title">Stage One
                        </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="S1" runat="server" GroupName="stage" />
                            Yellow net curtains with bokay of beautiful flowers on them,and Jhula for groom and bride
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image8" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/s1m.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Stage Two
              </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="S2" runat="server" GroupName="stage" />

                            Background decorated with rings of flowers,Sofa 
                    and two side Chairs
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image16" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/18556346_1877436909181347_2152735275531102700_n.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Stage Three
              </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="S3" runat="server" GroupName="stage" />
                            Artifical Flowers Side frame and Curtains and Flowers
                        </p>
                    </div>
                </div>
            </div>
            <!--Stage End-->

            <!--Siting Strat-->
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">

                    <asp:Image ID="Image6" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/m3s.jpg" Width="350px" Height="200px" />
                    <br />
                    <div class="card-body">
                        <h4 class="card-title">Sitting One
              </h4>


                        <p class="card-text">
                            <asp:RadioButton ID="ST1" runat="server" GroupName="sitting" />
                            Rectangle multi-color table with ecralic chairs(10 per table)
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image9" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/sit3m.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Sitting Two
              </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="ST2" runat="server" GroupName="sitting" />
                            Rectangle tables with multi-color chair covers(10 person per table)
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image17" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/IMG_1538.jpg" Width="350px" Height="200px" />

                    <div class="card-body">
                        <h4 class="card-title">Sitting Three
              </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="ST3" runat="server" GroupName="sitting" />

                            fancy multi-color round tables with ecralic chairs
                        </p>
                    </div>
                </div>
            </div>
            <!--Siting End-->

        </div>
        <!-- /.row -->

    </div>





</asp:Content>

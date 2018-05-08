<%@ Page Title="OtherEventPlan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OtherEventPlan.aspx.cs" Inherits="ObrsBanquet.OtherEventPlan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <h1 class="my-4 col-lg-6">Reservation  <small>OOther Events Plan</small></h1>
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

                    <asp:Image ID="Image10" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/26907751_1990072741251096_2429166143403335586_n.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Entrance One/h4>
                        <p class="card-text">
                            <asp:RadioButton ID="E1" Checked="true" runat="server" GroupName="entrance" />
                            Full of Yellow Artifical Flowers with the through of lights from the bottom.Poles are decorated with red curtains
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image7" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/images.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Entrance Two</h4>
                        <p class="card-text">
                            <asp:RadioButton ID="E2" runat="server" GroupName="entrance" />
                            Full of Real Flowers(gainda)
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image15" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/download.jpg" Width="350px" Height="200px" />
                    <div class="card-body">
                        <h4 class="card-title">Entrance Three</h4>
                        <p class="card-text">
                            <asp:RadioButton ID="E3" runat="server" GroupName="entrance" />
                            Yellow and white net curtains with led lights
                        </p>
                    </div>
                </div>
            </div>
            <!--Entrance End-->

            <!--Stage Start-->

            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">

                    <asp:Image ID="Image5" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/mehstage.jpg" Width="350px" Height="200px" />

                    <div class="card-body">
                        <h4 class="card-title">Stage One
                        </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="S1" runat="server" GroupName="stage" />
                            Jhula with chairs each side and umbrealla stands along with chairs side and umbrealla stands along with chairs<br />
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image8" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/images (5).jpg" Width="350px" Height="200px" />
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
                    <asp:Image ID="Image16" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/ac269f95353d2fa5e5d4488803e958aa.jpg" Width="350px" Height="200px" />
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

                    <asp:Image ID="Image6" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/IMG_1538.jpg" Width="350px" Height="200px" />
                    <br />
                    <div class="card-body">
                        <h4 class="card-title">Sitting One
              </h4>


                        <p class="card-text">
                            <asp:RadioButton ID="ST1" runat="server" GroupName="sitting" />
                            fancy multi-color round tables with ecralic chairs
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100">
                    <asp:Image ID="Image9" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/images (3).jpg" Width="350px" Height="200px" />
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
                    <asp:Image ID="Image17" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/indian-wedding-reception-table-venue-seating.jpg" Width="350px" Height="200px" />

                    <div class="card-body">
                        <h4 class="card-title">Sitting Three
              </h4>
                        <p class="card-text">
                            <asp:RadioButton ID="ST3" runat="server" GroupName="sitting" />
                            Yellow and white net curtains with led lights
                        </p>
                    </div>
                </div>
            </div>
            <!--Siting End-->

        </div>
        <!-- /.row -->

    </div>

</asp:Content>

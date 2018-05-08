<%@ Page Title="Baraat" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Baraat.aspx.cs" Inherits="ObrsBanquet.Baraat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container">
         <div class="row">
            <h1 class="my-4 col-lg-6">Reservation  <small>Baraat Plan</small></h1>
                    <div class="col-lg-6" style="margin-bottom: auto; margin-top: auto">
                <div class="row">
                   <a  class="btn btn-dark col-3" runat="server" href="Next.aspx">Skip</a>
                     <span class="col-2"></span>
                   <a  class="btn btn-primary col-4" runat="server" href="Next.aspx">Submit</a>
                    </div>
            </div>
    
        </div>
        <div class="row text-center">
            <asp:Label ID="InfoLable" CssClass="text-info h5 align-content-center" runat="server" Text="Select any Stage, Entreance and Sitting Style"></asp:Label>
        </div>

      <div class="row">
  <!--Entrance Start-->
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
           
            <asp:Image ID="Image10" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/e5.jpg" Width="350px" Height="200px"/>
            
            <div class="card-body">
              <h4 class="card-title">
                Entrance One
              </h4>
              <p class="card-text"> <asp:RadioButton ID="E1" Checked="true" runat="server" GroupName="entrance" />
               Full of Yellow Artifical Flowers with the through of lights from the bottom.Poles are decorated with red curtains</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
              <asp:Image ID="Image7" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/20621107_1914477515477286_9139352748580734760_n.jpg" Width="350px" Height="200px"/>
                <div class="card-body">
              <h4 class="card-title">
                Entrance Two
              
              </h4>
              <p class="card-text">    <asp:RadioButton ID="E2" runat="server" GroupName="entrance" />
        
                    Full of Real Flowers(gainda)
                </p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
              <asp:Image ID="Image15" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/26907751_1990072741251096_2429166143403335586_n.jpg" Width="350px" Height="200px"/>
                           <div class="card-body">
              <h4 class="card-title">
                Entrance Three
              
              </h4>
              <p class="card-text">                 <asp:RadioButton ID="E3" runat="server" GroupName="entrance" />
                    
                        Yellow and white net curtains with led lights
         
                </p>
            </div>
          </div>
        </div>
  <!--Entrance End-->

  <!--Stage Start-->

        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
           
            <asp:Image ID="Image5" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/s1b.jpg" Width="350px" Height="200px"/>
           
            <div class="card-body">
              <h4 class="card-title">
                         Stage One
            </h4>
              <p class="card-text">   <asp:RadioButton ID="S1" runat="server" GroupName="stage" />
                Yellow net curtains with bokay of beautiful flowers on them,and Jhula for groom and bride</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
              <asp:Image ID="Image8" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/s2b.jpg" Width="350px" Height="200px"/>
                                  <div class="card-body">
              <h4 class="card-title">
                Stage Two
              </h4>
              <p class="card-text">  <asp:RadioButton ID="S2" runat="server" GroupName="stage" />
                  
                    Background decorated with rings of flowers,Sofa 
                    and two side Chairs</p>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
              <asp:Image ID="Image16" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/21314479_1925963460995358_1158946034059392553_n.jpg" Width="350px" Height="200px"/>
                     <div class="card-body">
              <h4 class="card-title">
                Stage Three
              </h4>
              <p class="card-text">             <asp:RadioButton ID="S3" runat="server" GroupName="stage" />
                  
                        Jhula with chairs each side and umbrealla stands along with chairs side and umbrealla stands along with chairs
                   </p>
            </div>
          </div>
        </div>
     <!--Stage End-->

  <!--Siting Strat-->
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
           
            <asp:Image ID="Image6" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/18278330_1869000136691691_6421803031100206019_o.jpg" Width="350px" Height="200px"/>
           
            <div class="card-body">
              <h4 class="card-title">
                Sitting One
              </h4>
              
                    
              <p class="card-text">      <asp:RadioButton ID="ST1" runat="server" GroupName="sitting" />
              Rectangle multi-color table with ecralic chairs(10 per table)</p>
            </div>
          </div>
        </div>     
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
              <asp:Image ID="Image9" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/20664896_1914477618810609_8797542339416255909_n.jpg" Width="350px" Height="200px"/>
                   
            <div class="card-body">
              <h4 class="card-title">
                Sitting Two
              </h4>
              <p class="card-text">   <asp:RadioButton ID="ST2" runat="server" GroupName="sitting" />
                        Rectangle tables with multi-color chair covers(10 person per table)
               </p>
            </div>
          </div>
        </div> 
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
              <asp:Image ID="Image17" runat="server" CssClass="card-img-top" ImageUrl="~/floor%20plan/a/20638147_1914477292143975_5411811689674920937_n.jpg" Width="350px" Height="200px"/>
                      
            <div class="card-body">
              <h4 class="card-title">
                Sitting Three
              </h4>
              <p class="card-text">    <asp:RadioButton ID="ST3" runat="server" GroupName="sitting" />
                      
                           Ecralic chairs with round multi-color tables
               </p>
            </div>
          </div>
        </div>
      <!--Siting End-->
        
      </div>
      <!-- /.row -->

      </div>

</asp:Content>

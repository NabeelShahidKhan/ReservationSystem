<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calander.aspx.cs" Inherits="ObrsBanquet.Calander" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
 <title>Al Yousuf Banquet</title>
    <link rel='shortcut icon' type='image/x-icon' href='/favicon.ico' />
    <!--<img src="favicon.ico" />-->
    <!--<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">-->

    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

    <link rel="stylesheet" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" href="css/animate.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/owl.theme.css"/>
    <link rel="stylesheet" href="css/owl.carousel.css"/>

    <!-- Main css -->
    <link href="css/CalanderStyle.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css"/>

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Poppins:400,500,600' rel='stylesheet' type='text/css'/>

</head>
<body data-spy="scroll" data-offset="50" data-target=".navbar-collapse">
    <!-- =========================
         PRE LOADER
    
    <div class="preloader">

        <div class="sk-rotating-plane"></div>

    </div>
    ============================== -->
   
    <div class="navbar custom-navbar" style="background-color:#000000" role="navigation">
        <div class="container">
            <!-- navbar header -->
            <div class="navbar-header">
                <a href="index.html" class="navbar-brand">Al Yousuf Banquet</a>
            </div>


        </div>
    </div>

    <form id="form2" runat="server">
    <div class="container">
        <div style="width: 100%; height: 10px;"></div>


        <div class="container">
            <div class="row">
                <div class="col-sm-6 text-right">
                    <label class="h2" style="margin: 0px;">Events Time Slot</label>
                </div>
                <!--<input type="text" placeholder="Enter Last Name Here.." class="form-control"/>-->
                <div class="col-sm-6">
                    <asp:DropDownList Style="margin: 0px;" CssClass="dropdown btn-primary form-control" ID="eventTimeDropdown" AutoPostBack="true" OnSelectedIndexChanged="EventTiming" runat="server" Width="250px">
                        <asp:ListItem>Night: 9:00-12:00 PM</asp:ListItem>
                     <asp:ListItem>Afternon: 12:00-5:00 PM</asp:ListItem>
                       </asp:DropDownList>
                </div>
            </div>

            <div style="width: 100%; height: 10px;"></div>

            <asp:Calendar ID="EventCalander" Font-Underline="false" runat="server" BackColor="#FFFFCC" CellPadding="8" CssClass="CalanderStyle text-center" DayNameFormat="Full" Font-Names="Calibri" Font-Size="Medium" TitleFormat="Month" Width="700px" NextMonthText="&gt;" PrevMonthText="&lt;" OnDayRender="UpdateCalander">
                <DayHeaderStyle BackColor="#F75133" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                <DayStyle Font-Bold="True" />
                <NextPrevStyle Font-Underline="false" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
                <OtherMonthDayStyle Wrap="True" Font-Overline="false" />
                <SelectorStyle BackColor="Blue" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="70px" HorizontalAlign="Center" VerticalAlign="Middle" />
                <TodayDayStyle BorderStyle="Solid" BorderWidth="1px" Font-Underline="false" />
            </asp:Calendar>
        </div>

        <div style="width: 100%; height: 10px;"></div>
        <div class="row">
            <div class="col-sm-6 text-right">
                <asp:Button ID="StartReservationButton" runat="server" CssClass="btn btn-primary" Text="Book Now" OnClick="SelectDateButton" Width="200px" Height="35px" />
            </div>
            <!--<input type="text" placeholder="Enter Last Name Here.." class="form-control"/>-->
            <div class="col-sm-6">
                <asp:Button ID="NextButton" runat="server" CssClass="btn btn-success" Text="Next" Enabled="false" OnClick="GoNext" Width="200px" Height="35px" />
            </div>
        </div>
        <div style="width: 100%; height: 10px;"></div>
        <div class="row">
        <div class="col-sm-12 text-center">
            <asp:Label ID="InfoLabel" CssClass="h3" runat="server" Text="Select Avilable Date"></asp:Label>
        </div>
        </div>
        
        </div>

    </form>
   <footer>
        <div class="container">
            <div class="row">

                <div class="col-md-12 col-sm-12">
                    <p class="wow fadeInUp" data-wow-delay="0.6s">
                        Copyright &copy; 2018 Al Yousuf Banquet

                        
                    </p>

                    <!--<ul class="social-icon">
                        <li><a href="#" class="fa fa-facebook wow fadeInUp" data-wow-delay="1s"></a></li>
                        <li><a href="#" class="fa fa-twitter wow fadeInUp" data-wow-delay="1.3s"></a></li>
                        <li><a href="#" class="fa fa-dribbble wow fadeInUp" data-wow-delay="1.6s"></a></li>
                        <li><a href="#" class="fa fa-behance wow fadeInUp" data-wow-delay="1.9s"></a></li>
                        <li><a href="#" class="fa fa-google-plus wow fadeInUp" data-wow-delay="2s"></a></li>
                    </ul>-->

                </div>

            </div>
        </div>
    </footer>


 <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.parallax.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/custom.js"></script>

</body>
</html>



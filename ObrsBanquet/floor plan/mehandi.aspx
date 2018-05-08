<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mehandi.aspx.cs" Inherits="ObrsBanquet.floor_plan.mehandi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="../js/jquery.js"></script>
   <%--/* <script type="text/javascript">
        $(document).ready(function(){
        $("table tr td").mouseover(function()
        {
            $(this).css("background-color", "lightblue");
 
       });
        $("table tr td").mouseout(function(){
            $(this).css("background-color","");
        });
        });*--%>


    </script>
    
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 898px;
        }
        .auto-style7 {
            width: 451px;
        }
        .auto-style4 {
            width: 450px;
        }
        .auto-style8 {
            width: 451px;
            height: 32px;
        }
        .auto-style12 {
            margin-top: 0px;
        }
        .auto-style13 {
            width: 450px;
            height: 32px;
        }
        .auto-style14 {
            margin-left: 1182px;
        }
        .auto-style15 {
            width: 78px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="tablediv" style="background-image: url('~/floor plan/back ground.jpg'); width:100%">
        <table class="auto-style3" style="border-spacing: -1px; font-family: &quot; Century Schoolbook&quot;" >
            <tr>
                <td class="auto-style4" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE ENTRANCE DESIGN</td>
                <td class="auto-style4" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE STAGE DESIGN</td>
                <td class="auto-style4" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE SITTING DESIGN</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/floor plan/e1m.jpg" Height="185px" Width="450px" />
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="entrance" />
                    <br />
                    Full of Yellow Artifical Flowers 
                    with the through of lights from the bottom.Poles are decorated with red curtains</td>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image11" runat="server" Height="186px" ImageUrl="~/floor plan/Mehndi-Stage-Decoration.jpg" Width="450px" CssClass="auto-style12" />
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="stage" OnCheckedChanged="RadioButton5_CheckedChanged" />
                    <br />
                    Yellow net curtains with bokay of beautiful flowers on them,and Jhula for groom and bride<br />
                </td>
                <td class="auto-style7" style="border-style: groove">
                    <asp:Image ID="Image21" runat="server" Height="185px" ImageUrl="~/floor plan/m3s.jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton9" runat="server" GroupName="sitting" />
                    <br />
                    Rectangle multi-color table with ecralic chairs(10 per table)<br />
&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image2" runat="server" Height="185px" ImageUrl="~/floor plan/e2m.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="entrance" />
                    <br />
                    Full of Real Flowers(gainda)</td>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image12" runat="server" Height="186px" ImageUrl="~/floor plan/s1m.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="stage" />
                    <br />
                    Background decorated with rings of flowers,Sofa 
                    and two side Chairs</td>
                <td class="auto-style7" style="border-style: groove">
                    <asp:Image ID="Image22" runat="server" Height="188px" ImageUrl="~/floor plan/sit3m.jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton10" runat="server" GroupName="sitting" />
                    <br />
                    Rectangle tables with multi-color chair covers(10 person per table</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: groove;">
                    <asp:Image ID="Image3" runat="server" Height="185px" ImageUrl="~/floor plan/mehndi-hall-decoration-2016-7-weddings-eve_l_d93e2d0c5e209d94.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and Maroon curtains with stripes of led lights</td>
                <td class="auto-style13" style="border-style: groove;">
                    <asp:Image ID="Image13" runat="server" Height="185px" ImageUrl="~/floor plan/18556346_1877436909181347_2152735275531102700_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton7" runat="server" GroupName="stage" />
                    <br />
                    Artifical Flowers Side frame and Curtains and Flowers,</td>
                <td class="auto-style8" style="border-style: groove">
                    <asp:Image ID="Image23" runat="server" Height="185px" ImageUrl="~/floor plan/20621832_1914477258810645_8082417942140727945_n.jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton11" runat="server" GroupName="sitting" />
    Ecralic chairs with round multi-color tables</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image4" runat="server" Height="185px" ImageUrl="~/floor plan/download.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; <br />
                </td>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image14" runat="server" Height="185px" ImageUrl="~/floor plan/mehstage.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton8" runat="server" GroupName="stage" />
                    <br />
                    Jhula with chairs each side and umbrealla stands along with chairs side and umbrealla stands along with chairs<br />
                </td>
                <td class="auto-style7" style="border-style: groove;">
                    <asp:Image ID="Image24" runat="server" Height="185px" ImageUrl="~/floor plan/IMG_1538.JPG" Width="440px" />
                    <asp:RadioButton ID="RadioButton12" runat="server" GroupName="sitting" />
                    <br />
                    fancy multi-color round tables with ecralic chairs<br />
&nbsp; <br />
                </td>
            </tr>
            </table>
       "&nbsp;
        <div class="auto-style14">
            <input type="button" id="Button1" runat="server" style="border-color:black; color: #FFFFFF; background-color: #000000;"  onclick="window.location.href='floorplan.aspx'" value="NEXT" class="auto-style15" /></div>
        </div>
    
    </form>
</body>
</html>

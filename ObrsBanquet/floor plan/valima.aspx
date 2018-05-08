<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="valima.aspx.cs" Inherits="ObrsBanquet.floor_plan.valima" %>

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
        .auto-style16 {
            width: 437px;
        }
        .auto-style17 {
            width: 437px;
            height: 32px;
        }
        .auto-style18 {
            width: 109%;
            margin-right: 108px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="tablediv" style="background-image: url('~/floor%20plan/back%20ground.jpg'); " class="auto-style18">
        <table class="auto-style3" style="border-spacing: -1px; font-family: &quot;Century Schoolbook&quot;" >
            <tr>
                <td class="auto-style4" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE ENTRANCE DESIGN</td>
                <td class="auto-style16" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE STAGE DESIGN</td>
                <td class="auto-style4" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE SITTING DESIGN</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image29" runat="server" Height="185px" ImageUrl="~/floor plan/a/Classy-Wedding-Door-Entrance-Decorators-in-Pondicherry.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="entrance" />
                    <br />
                    Full of Yellow Artifical Flowers 
                    with the through of lights from the bottom.Poles are decorated with red curtains</td>
                <td class="auto-style16" style="border-style: groove;">
                    <asp:Image ID="Image11" runat="server" Height="186px" ImageUrl="~/floor plan/a/images (1).jpg" Width="450px" CssClass="auto-style12" />
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="stage" />
                    <br />
                    Yellow net curtains with bokay of beautiful flowers on them,and Jhula for groom and bride<br />
                </td>
                <td class="auto-style7" style="border-style: groove">
                    <asp:Image ID="Image21" runat="server" Height="185px" ImageUrl="~/floor plan/a/27332230_1990072507917786_4270215605459397005_n.jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton9" runat="server" GroupName="sitting" />
                    <br />
                    Rectangle multi-color table with ecralic chairs(10 per table)<br />
&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image2" runat="server" Height="185px" ImageUrl="~/floor plan/a/mehndi-entrance-decorations-www.ideas_.bestwedding-dresses-1.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="entrance" />
                    <br />
                    Full of Real Flowers(gainda)</td>
                <td class="auto-style16" style="border-style: groove;">
                    <asp:Image ID="Image12" runat="server" Height="186px" ImageUrl="~/floor plan/a/images (5).jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="stage" />
                    <br />
                    Background decorated with rings of flowers,Sofa 
                    and two side Chairs</td>
                <td class="auto-style7" style="border-style: groove">
                    <asp:Image ID="Image22" runat="server" Height="188px" ImageUrl="~/floor plan/a/images (3).jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton10" runat="server" GroupName="sitting" />
                    <br />
                    Rectangle tables with multi-color chair covers(10 person per table</td>
            </tr>
            <tr>
                <td class="auto-style13" style="border-style: groove;">
                    <asp:Image ID="Image3" runat="server" Height="185px" ImageUrl="~/floor plan/a/26907012_1990072227917814_3597041185302863541_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and Maroon curtains with stripes of led lights</td>
                <td class="auto-style17" style="border-style: groove;">
                    <asp:Image ID="Image13" runat="server" Height="185px" ImageUrl="~/floor plan/a/ac269f95353d2fa5e5d4488803e958aa.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton7" runat="server" GroupName="stage" />
                    <br />
                    Artifical Flowers Side frame and Curtains and Flowers,</td>
                <td class="auto-style8" style="border-style: groove">
                    <asp:Image ID="Image23" runat="server" Height="185px" ImageUrl="~/floor plan/a/images (9).jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton11" runat="server" GroupName="sitting" />
    Ecralic chairs with round multi-color tables</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image28" runat="server" Height="185px" ImageUrl="~/floor plan/a/images (10).jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; <br />
                </td>
                <td class="auto-style16" style="border-style: groove;">
                    <asp:Image ID="Image14" runat="server" Height="185px" ImageUrl="~/floor plan/a/new-elegant-lighting-chandelier-wedding-stage-decor-20180314120322.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton8" runat="server" GroupName="stage" />
                    <br />
                    Jhula with chairs each side and umbrealla stands along with chairs side and umbrealla stands along with chairs<br />
                </td>
                <td class="auto-style7" style="border-style: groove;">
                    <asp:Image ID="Image24" runat="server" Height="185px" ImageUrl="~/floor plan/a/images (6).jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton12" runat="server" GroupName="sitting" />
                    <br />
                    fancy multi-color round tables with ecralic chairs<br />
&nbsp; <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image25" runat="server" Height="185px" ImageUrl="~/floor plan/a/Classy-Wedding-Door-Entrance-Decorators-in-Pondicherry.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton13" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; 
                </td>
                <td class="auto-style16" style="border-style: groove;">
                    <asp:Image ID="Image26" runat="server" Height="185px" ImageUrl="~/floor plan/a/images (7).jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton14" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; 
                </td>
                <td class="auto-style7" style="border-style: groove;">
                    <asp:Image ID="Image27" runat="server" Height="185px" ImageUrl="~/floor plan/a/images (8).jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton15" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; 
                </td>
            </tr>
            </table>
       "&nbsp;
        <div class="auto-style14">
            <input type="button" id="Button1" runat="server" style="border-color:black; color: #FFFFFF; background-color: #000000;"  onclick="window.location.href='floorplan.aspx'" value="DONE" class="auto-style15" /></div>
        </div>
    
    </form>
</body>
</html>
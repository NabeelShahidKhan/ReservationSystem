<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baraat.aspx.cs" Inherits="ObrsBanquet.floor_plan.baraat" %>

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
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="tablediv" style="background-image: url('~/floor plan/a/back ground.jpg'); width:100%">
        <table class="auto-style3" style="border-spacing: -1px; font-family: &quot;Century Schoolbook&quot;" >
            <tr>
                <td class="auto-style4" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE ENTRANCE DESIGN</td>
                <td class="auto-style16" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE STAGE DESIGN</td>
                <td class="auto-style4" style="background-color: #666666; color: #FFFFFF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT ANY ONE SITTING DESIGN</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/floor plan/a/e5.jpg" Height="185px" Width="450px" />
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="entrance" />
                    <br />
                    Full of Yellow Artifical Flowers 
                    with the through of lights from the bottom.Poles are decorated with red curtains</td>
                <td class="auto-style16" style="border-style: groove;">
                    <asp:Image ID="Image11" runat="server" Height="186px" ImageUrl="~/floor plan/a/s1b.jpg" Width="450px" CssClass="auto-style12" />
                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="stage" />
                    <br />
                    Yellow net curtains with bokay of beautiful flowers on them,and Jhula for groom and bride<br />
                </td>
                <td class="auto-style7" style="border-style: groove">
                    <asp:Image ID="Image21" runat="server" Height="185px" ImageUrl="~/floor plan/a/18278330_1869000136691691_6421803031100206019_o.jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton9" runat="server" GroupName="sitting" />
                    <br />
                    Rectangle multi-color table with ecralic chairs(10 per table)<br />
&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image2" runat="server" Height="185px" ImageUrl="~/floor plan/a/20621107_1914477515477286_9139352748580734760_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="entrance" />
                    <br />
                    Full of Real Flowers(gainda)</td>
                <td class="auto-style16" style="border-style: groove;">
                    <asp:Image ID="Image12" runat="server" Height="186px" ImageUrl="~/floor plan/a/s2b.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="stage" />
                    <br />
                    Background decorated with rings of flowers,Sofa 
                    and two side Chairs</td>
                <td class="auto-style7" style="border-style: groove">
                    <asp:Image ID="Image22" runat="server" Height="188px" ImageUrl="~/floor plan/a/20638147_1914477292143975_5411811689674920937_n.jpg" Width="440px" />
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
                    <asp:Image ID="Image13" runat="server" Height="185px" ImageUrl="~/floor plan/a/21270927_1925963337662037_2384535754921898316_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton7" runat="server" GroupName="stage" />
                    <br />
                    Artifical Flowers Side frame and Curtains and Flowers,</td>
                <td class="auto-style8" style="border-style: groove">
                    <asp:Image ID="Image23" runat="server" Height="185px" ImageUrl="~/floor plan/a/20664896_1914477618810609_8797542339416255909_n.jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton11" runat="server" GroupName="sitting" />
    Ecralic chairs with round multi-color tables</td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image4" runat="server" Height="185px" ImageUrl="~/floor plan/a/26907751_1990072741251096_2429166143403335586_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; <br />
                </td>
                <td class="auto-style16" style="border-style: groove;">
                    <asp:Image ID="Image14" runat="server" Height="185px" ImageUrl="~/floor plan/a/21314479_1925963460995358_1158946034059392553_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton8" runat="server" GroupName="stage" />
                    <br />
                    Jhula with chairs each side and umbrealla stands along with chairs side and umbrealla stands along with chairs<br />
                </td>
                <td class="auto-style7" style="border-style: groove;">
                    <asp:Image ID="Image24" runat="server" Height="185px" ImageUrl="~/floor plan/a/26907751_1990072741251096_2429166143403335586_n.jpg" Width="440px" />
                    <asp:RadioButton ID="RadioButton12" runat="server" GroupName="sitting" />
                    <br />
                    fancy multi-color round tables with ecralic chairs<br />
&nbsp; <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="border-style: groove;">
                    <asp:Image ID="Image25" runat="server" Height="185px" ImageUrl="~/floor plan/a/26907751_1990072741251096_2429166143403335586_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton13" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; 
                </td>
                <td class="auto-style16" style="border-style: groove;">
                    <asp:Image ID="Image26" runat="server" Height="185px" ImageUrl="~/floor plan/a/27067461_1990072424584461_7377174709783895243_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton14" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; 
                </td>
                <td class="auto-style7" style="border-style: groove;">
                    <asp:Image ID="Image27" runat="server" Height="185px" ImageUrl="~/floor plan/a/27073028_1990072704584433_6009291507339256741_n.jpg" Width="450px" />
                    <asp:RadioButton ID="RadioButton15" runat="server" GroupName="entrance" />
                    <br />
                    Yellow and white net curtains with led lights<br />
&nbsp; 
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
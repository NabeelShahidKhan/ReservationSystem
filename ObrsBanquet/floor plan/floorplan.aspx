<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="floorplan.aspx.cs" Inherits="ObrsBanquet.floorplan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style>
        #labelfloorplan{
            color:darkblue;

        }
        #floorplandiv1{
           /* border-bottom-right-radius:10%;
           bor*/
        }
    </style>
      <script src="js/jquery.js"></script>
    <script type="text/javascript">


    </script>
</head>
<body>
    <form id="form1" runat="server">
     <div id="floorplandiv1" style="height:35%; width:100%">                         
           
        <fieldset style="width:100%">

            <legend id="labelfloorplan">PLEASE SELECT YOUR DESIRED FUNCTION</legend>
           <input type="button" id=" mahendi" style="height: 191px; width: 32%; background-color: #000000; font-size: 23px; color: #FFFFFF;"; onclick="window.location.href='mehandi.aspx'" value="MAHENDI" />
        
           <input  type="button" id=" baraat" style="height: 191px; width: 32%; background-color: #000000; font-size: 23px; color: #FFFFFF;"; onclick="window.location.href='baraat.aspx'" value="BARAAT" />       
           <input  type="button" id=" valima" style="height: 191px; width: 32%; background-color: #000000; font-size: 23px; color: #FFFFFF;"; onclick="window.location.href='valima.aspx'" value="WALIMA" />
        </fieldset>
               
       
    </div>
       
            <div id="formatdiv">
                <br />
                <fieldset style="width:40%">
                <legend>SITTING FORMAT</legend>
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="format"  />
                JOINT&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="format" />
                SEPARATE
                    </fieldset>

                <br />
                <fieldset style="width:40%">
                <legend>CROCKERY TYPE</legend>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="crockery" />
                SILVER WARE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="crockery"  />
                CERAMIC WARE
                    </fieldset>

            </div>
     
       
        

              
    </form>
</body>
</html>

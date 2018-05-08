<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FLoorPlan.aspx.cs" Inherits="ObrsBanquet.FLoorPlan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    
       <!-- Page Heading -->
        <h1 class="my-4">Reservation
       
            <small>Floor Planing</small>
        </h1>
       
         <div class="container">


      <div class="row">
        
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
              <input type="button" id=" mahendi" style="height: 200px; width: 100%; background-image: url('../floor plan//backGround/a (6).jpg'); background-size:100% 100%; font-size: 60px; font:bold; color:black;"; onclick="window.location.href='Mhandi.aspx'" value="MAHENDI" />
        </div>
        </div>
        
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
           <input  type="button" id=" baraat" style="height: 200px; width: 100%;  background-image: url('../floor plan//backGround/a (2).jpg'); background-size:100% 100%; font-size: 60px; font:bold; color: black;"; onclick="window.location.href='Baraat.aspx'" value="BARAAT" />       
          </div>
        </div>
        
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
           <input  type="button" id=" valima" style="height: 200px; width: 100%;  background-image: url('../floor plan//backGround/a (3).jpg'); background-size:100% 100%; font-size: 60px; font:bold; color: black;"; onclick="window.location.href='Valima.aspx'" value="WALIMA" />
          </div>
        </div>
        
        <div class="col-lg-6 portfolio-item">
          <div class="card h-100">
         <input  type="button" id=" otherEventPlan" style="height: 200px; width: 100%;  background-image: url('../floor plan//backGround/a (8).jpg'); background-size:100% 100%; font-size: 60px; font:bold; color: black;"; onclick="window.location.href = 'OtherEventPlan.aspx'" value="OTHER EVENT" />
          </div>
        </div>
        
      </div>
      <!-- /.row -->

     
    </div>
    </div>
</asp:Content>

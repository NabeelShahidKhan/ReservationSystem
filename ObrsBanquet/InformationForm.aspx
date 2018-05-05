<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InformationForm.aspx.cs" Inherits="ObrsBanquet.InformationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">
        <h1 class="my-4 well">Reservation
        <small>Information Form</small>
        </h1>
        <!-- <h1 class="well">Registration Form</h1>-->
        <div class="col-lg-12 well">
            <div class="row">
                <div class="col-sm-12">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label class="h3" style="color: dodgerblue">Selected Date : </label>
                            <!--<input type="text" placeholder="Enter First Name Here.." class="form-control"/>-->
                            <asp:Label CssClass="h3" Style="text-decoration-line: underline; font: bold" ID="dateLable" runat="server" Text=" "></asp:Label>
                        </div>
                        <div class="col-sm-6 form-group">
                            <label class="h3" style="color: dodgerblue">Selected Time : </label>
                            <!--<input type="text" placeholder="Enter First Name Here.." class="form-control"/>-->
                            <asp:Label CssClass="h3" Style="text-decoration-line: underline; font: bold" ID="timeLable" runat="server" Text=" "></asp:Label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-4 form-group">
                            <label>Event Name</label>
                            <!--<input type="text" placeholder="Enter First Name Here.." class="form-control"/>-->
                            <asp:TextBox ID="EventNameTextBox" placeholder="Enter Event Name Here.." class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="col-sm-4 form-group">
                            <label>No of Guest</label>
                            <asp:TextBox ID="NoOfGuest" placeholder="Estimated No of Guest.." class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label>Event Type</label>
                            <!--<input type="text" placeholder="Enter Last Name Here.." class="form-control"/>-->
                            <asp:DropDownList CssClass="dropdown btn-primary form-control" ID="EventTypeDropDown" runat="server" Width="200px">
                                <asp:ListItem>Wedding Ceremony</asp:ListItem>
                                <asp:ListItem>Mehndi/Mayon</asp:ListItem>
                                <asp:ListItem>Offical Meeting</asp:ListItem>
                                <asp:ListItem>Get Together</asp:ListItem>
                                <asp:ListItem>Party</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <label>First Name</label>
                            <!--<input type="text" placeholder="Enter First Name Here.." class="form-control"/>-->
                            <asp:TextBox ID="firstNameText" placeholder="Enter First Name Here.." class="form-control" runat="server"></asp:TextBox>

                        </div>
                        <div class="col-sm-6 form-group">
                            <label>Last Name</label>
                            <!--<input type="text" placeholder="Enter Last Name Here.." class="form-control"/>-->
                            <asp:TextBox placeholder="Enter Last Name Here.." class="form-control" ID="lastNameText" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <label>Address</label>
                            <!--<textarea placeholder="Enter Address Here.." rows="3" class="form-control"></textarea>-->
                            <asp:TextBox placeholder="Enter Address Here.." Rows="3" class="form-control" ID="addressText" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label>City</label>
                            <!--<input type="text" placeholder="Enter State Name Here.." class="form-control"/>-->
                            <asp:TextBox placeholder="Enter State Name Here.." class="form-control" ID="CityText" runat="server"></asp:TextBox>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-sm-4 form-group">
                            <label>N.I.C</label>
                            <!--<input type="text" placeholder="Enter State Name Here.." class="form-control"/>-->
                            <asp:TextBox placeholder="Enter N.I.C Here.." class="form-control" ID="NICText" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label>Phone Number</label>
                            <!--<input type="text" placeholder="Enter Phone Number Here.." class="form-control"/>-->
                            <asp:TextBox placeholder="Enter Phone Number Here.." class="form-control" ID="phoneNoText" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-sm-4 form-group">
                            <label>Mobile Number</label>
                            <!--<input type="text" placeholder="Enter Mobile Number Here.." class="form-control"/>-->
                            <asp:TextBox placeholder="Enter Mobile Number Here.." class="form-control" ID="mobileNoText" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-8 form-group">
                            <label>Email Address</label>
                            <!--<input type="text" placeholder="Enter Email Address Here.." class="form-control"/>-->
                            <asp:TextBox placeholder="Enter Email Address Here.." class="form-control" ID="EmailText" runat="server"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-4">
                            <asp:Label ID="InfoRequiredLable" CssClass="text-danger h4" runat="server" Text=" "></asp:Label>
                        </div>
                        <div class="col-sm-4 form-group">
                            <asp:Button ID="PreviousButton" class="btn-info form-control" Width="200px" runat="server" Text="Previous " OnClick="Previous_Click" />
                        </div>
                        <div class="col-sm-4 form-group">
                            <asp:Button ID="SubmitButton" class="btn-primary form-control" Width="200px" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                        </div>
                    </div>

                      <div class="row">
                        <div class="col-sm-8">
                            <asp:Label ID="SubmitLabel" CssClass="text-success h4" runat="server" Text=" "></asp:Label>
                        </div>
                        <div class="col-sm-4 form-group">
                            <asp:Button ID="NextButton" class="btn-info form-control" Visible="false" Width="200px" runat="server" Text="GO Next" OnClick="Next_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


</asp:Content>

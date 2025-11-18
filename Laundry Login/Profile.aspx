<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Laundry_Login.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="profile.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid mt-4">

        <div class="myprofile">
            <h2 class="fw-bold mb-0">Profile</h2>
            <small class="text-muted">Manage your User Profile</small>   
        </div>
        <asp:Image ID="Image1" runat="server" />
        <div class="section-title">Profile Information</div>

        <!-- Profile Card -->
        <div class="row">
            <div class="col-md-12">
                <div class="profile-card">
                    <div class="profile-header">
                                    <!-- Avatar -->
                    <div class="profile-avatar">
                        <span><%# User.Identity.Name.Substring(0, 1) %></span>
                    </div>
                                  <!-- Profile Title and Role -->
                        <div class="ProfileRole-container">

                    <div class="profile-title">User<%# User.Identity.Name %></div>
                    <div class="profile-role">Administrator</div>

                        </div>


                    </div>



                    <!-- Profile Information -->
                    

                    <div class="profile-details">

                        <div class="col-left">
                         <p><strong>Full Name:</strong> <span><%# User.Identity.Name %></span></p>
                        <asp:TextBox ID="fullname" placeholder="Aljur" CssClass="input-group"  runat="server"></asp:TextBox>


                        
                        <p><strong>Account ID:</strong> <span><asp:Label ID="AccountIDLabel" runat="server" /></span></p>
                        <asp:TextBox ID="accountID" CssClass="input-group"  placeholder="12345" runat="server"></asp:TextBox>
                      
                      <p><strong>Account Created:</strong> <span><asp:Label ID="AccountCreatedLabel" runat="server" /></span></p>
                            <asp:TextBox ID="accountcreated" CssClass="input-group" placeholder="October 18, 2025" runat="server"></asp:TextBox>

                        </div>


                        <div class="col-right">
                          <p><strong>Email Address:</strong> <span><asp:Label ID="EmailLabel" runat="server" /></span></p>
                        <asp:TextBox ID="emailaddress" placeholder="@gmail.com" CssClass="input-group" runat="server"></asp:TextBox>
                        <p class="email-note">Email cannot be changed</p>
                        </div>

  
                    </div>

                    <!-- Edit Profile Button -->
              
                    <asp:Button href="" ID="Edit"  runat="server" Text="Edit Profile" CssClass="profile-button"/>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
    
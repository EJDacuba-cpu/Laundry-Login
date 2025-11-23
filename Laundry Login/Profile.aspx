<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Laundry_Login.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link href="ProfileStyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid mt-4">
          <div class="myprofile">
       <h2> My Profile</h2>
       <small>Manage your User Profile</small>   
   </div>

   <!-- Profile Card -->
   <div class="row">
       <div class="col-md-12">


           <div class="profile_picture">
                    <div class="section-title">Profile Picture</div>
                <!--Profile Avatar -->
               <div class="profile-header">    
  
               <div class="profile-avatar">                
                   <asp:Image CssClass="Avatar" ID="Image2" runat="server" />
                   <span><%# User.Identity.Name.Substring(0, 1) %></span>                  
               </div>        
                             <!-- Profile photo -->
                   <div class="Profile-container">       
               <div class="profile-upload">Upload a new profile picture</div> 
                         <asp:Button  CssClass="upload_btn" runat="server" Text="Upload Photo" />
                   </div>
                   
               </div>
           </div>

           <div class="profile-card">

                    <!-- Profile Information -->
                   
                    <div class="profile-information">
                        <div class="section-title">Account Information</div>

                      <div class="input-group">
                        <div class="label-row">
                         <ion-icon name="person-outline"></ion-icon>   
                         <p><strong>Username:</strong> <span><asp:Label ID="UsernameLabel" runat="server" /></span></p>
                        </div>              
                        <asp:TextBox ID="username"  placeholder="Your username" runat="server"></asp:TextBox>                     
                     </div>

                     <div class="input-group">
                         <div class="label-row">
                             <ion-icon name="person-outline"></ion-icon>
                          <p><strong>Full Name:</strong> <span><%# User.Identity.Name %></span></p>                     
                         </div>
                        <asp:TextBox ID="fullname" placeholder="Your full name" runat="server"></asp:TextBox>
                    </div>
                    
                 
                        <div class="input-group">
                            <div class="label-row">
                                <ion-icon name="mail-outline"></ion-icon>
                                <p><strong>Email Address:</strong> <span><asp:Label ID="EmailLabel" runat="server" /></span></p>
                            </div>                            
                             <asp:TextBox ID="emailaddress" placeholder="@gmail.com" runat="server"></asp:TextBox>
                             <p class="email-note">Email cannot be changed</p>
                        </div>

                        <div class="input-group">
                            <div class="label-row">
                                <ion-icon name="call-outline"></ion-icon>
                                <p><strong>Phone Number:</strong> <span><asp:Label ID="PhoneLabel" runat="server" /></span></p>
                            </div>                            
                             <asp:TextBox ID="phonenumber" placeholder="+63" runat="server"></asp:TextBox>                             
                        </div>

                        <div class="input-group">
                            <div class="label-row">
                                <ion-icon name="location-outline"></ion-icon>
                              <p><strong>Default Address:</strong> <span><asp:Label ID="Label1" runat="server" /></span></p>
                            </div>
                             
                             <asp:TextBox ID="delivery_addrss" placeholder="Your default pickup/delivery address" runat="server"></asp:TextBox>
                        </div>

                          <!-- Edit Profile Button -->                                                    
                      <asp:Button href="" ID="Button1"  runat="server" Text="Save Changes" CssClass="profile-button"/>
                        </div>       
                </div>
      
         <div class="account_details">
                      <div class="section-title">Account Details</div>
                      <p>(example)Account Type: admin </p>
                       <p>Created account: 11/21/2025</p>
                      <div class="details">
               </div>
       </div>


           <div class="Security">
               <div class="section-title">Password & Security</div>
               <p>Manage your password, login reference and recovery method </p>
               <div class="security_info">

               </div>

           </div>


            </div>
        </div>
    </div>


    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</asp:Content>
    
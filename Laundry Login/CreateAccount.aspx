<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="Laundry_Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="createaccount.css" rel="stylesheet" />
    <script src="validation.js"></script>
</head>
<body>
       <div class="container">
        <div class="Signup-box">          
                <form id="form1" runat="server">
                    <h1> Let's create your account</h1>
                    <asp:Label ID="messagetxt" runat="server"></asp:Label>
        <div class="input-group">
            <asp:TextBox ID="username" runat="server" placeholder="Username"></asp:TextBox>
            <ion-icon class="icon" name="person-sharp"></ion-icon>
        </div>
                    <div class="input-group">
                        <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
                        <ion-icon class="icon"  name="mail"></ion-icon>
                    </div>

                    <div class="input-group">
                        <asp:TextBox ID="password" runat="server"  placeholder="Password"></asp:TextBox>
                         <ion-icon class="icon" name="lock-closed-sharp"></ion-icon>
                    </div>

                    <div class="input-group">
                        <asp:TextBox ID="confirmpassword" runat="server"  placeholder="Confirm Password"></asp:TextBox>
                        <ion-icon class="icon" name="lock-closed-sharp"></ion-icon>
                    </div>

                    <div class="input-group">
                         <asp:TextBox ID="contactnum" runat="server"  placeholder="Contact Number"></asp:TextBox>
                        <ion-icon class="icon"  name="call"></ion-icon>
                    </div>

                    <div class="agreeterms-box">
                     <label>
                         <asp:CheckBox ID="checkbox" runat="server" />
                        I agree to terms in one condition
                    </label>   
                    </div>

                    <asp:Button ID="signup" CssClass="btn" runat="server" Text="Sign Up" />


                     <div class="Already-Account-Link">
                        <p>Already have an Account? <a href="Login.aspx" class="signin">Sign In</a></p>
                    </div>
    </form>
          
        </div>
                       <div class="right-panel">
                <div class="Logo-box">
                    <h2>Press & Dry <br />
                        Laundry Services</h2>
                </div>

            </div>
    </div>


     <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>
</html>

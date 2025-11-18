<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Laundry_Login.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="forgopassword.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

    <!-- MAIN CONTAINER -->
    <div class="container">

        <div class="Form">

            <img src="Images/Forget.jpg" class="forgot-img" />

            <div class="Description">
                <h2>Forgot Password?</h2>
                <p>Don't worry! Resetting your password is easy, just type in the email you used to register at Press & Dry Laundry Services.</p>
            </div>

            <label for="txtResetEmail">Email:</label>

            <asp:TextBox ID="txtResetEmail" runat="server" CssClass="input" 
                placeholder="Enter your Email"></asp:TextBox>

            <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" CssClass="btn" />

            <div class="rememberpass">
                <p>Did you remember your password?
                    <a href="Login.aspx">Sign In</a>
                </p>
            </div>

        </div>

    </div>

</form>
</body>
</html>

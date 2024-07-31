<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn_SignUp.aspx.cs" Inherits="HygeRoyal_Booking.Pages.SignIn_SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
    <link rel="stylesheet" type="text/css" href="../Content/css/account.css"/>
    <link rel="icon" type="image/png" href="../Content/images/logo.png"/>
    <title>HygeRoyal.com</title>
</head>
<body>
    <form class="container" id="container" runat="server">
        <div class="form-container sign-up">
            <div class="form" runat="server">
                <h1>Create Account</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>or use your email for registeration</span>
                <div class="input-control">
                    <input type="text" placeholder="Name" id="upname" runat="server"/>
                    <div class="error"></div>
                </div>
                <div class="input-control">
                    <input type="text" placeholder="Email" id="upemail" runat ="server"/>
                    <div class="error"></div>
                </div>
                <div class="input-control">
                    <input type="password" placeholder="Password" id="uppassword" runat="server"/>
                    <div class="error"></div>
                </div>
                <button id="btn_signup" runat="server" onserverclick="BtnSignUp_Click">Sign Up</button>
            </div>
        </div>
        <div class="form-container sign-in">
            <div class="form" runat="server">
                <h1>Sign In</h1>
                <div class="social-icons">
                    <a href="#" class="icon"><i class="fa-brands fa-google-plus-g"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-github"></i></a>
                    <a href="#" class="icon"><i class="fa-brands fa-linkedin-in"></i></a>
                </div>
                <span>or use your email password</span>
                <div class="input-control">
                    <input type="text" placeholder="Email" id="inemail" runat="server"/>
                    <div class="error"></div>
                </div>
                <div class="input-control">
                    <input type="password" placeholder="Password" id="inpassword" runat="server"/>
                    <div class="error"></div>
                </div>
                <a href="#">Forget Your Password?</a>
                <button id="btn_signin" onserverclick="BtnSignIn_Click" runat="server">Sign In</button>
            </div>
        </div>
        <div class="toggle-container">
            <div class="toggle">
                <div class="toggle-panel toggle-left">
                    <h1>Welcome Back!</h1>
                    <p>Enter your personal details to use all of site features</p>
                    <button class="hidden" type="button" id="login">Sign In</button>
                </div>
                <div class="toggle-panel toggle-right">
                    <h1>Hello, Friend!</h1>
                    <p>Register with your personal details to use all of site features</p>
                    <button class="hidden" type="button" id="register">Sign Up</button>
                </div>
            </div>
        </div>
    </form>
    <script type="text/javascript" src="../Scripts/account.js"></script>
</body>
</html>

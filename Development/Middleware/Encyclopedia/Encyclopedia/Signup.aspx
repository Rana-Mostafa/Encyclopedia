<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Encyclopedia.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="CSS/Signup.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-form">

            <h2>Sign up</h2>

            <div class="input-form">
                <asp:TextBox ID="UserName" runat="server" MaxLength="30" minlength="4" required type="text" placeholder="Username"></asp:TextBox>
            </div>
            <div class="input-form">
                <asp:TextBox ID="Email" runat="server" MaxLength="30" minlength="4" required type="email" placeholder="Email"></asp:TextBox>
            </div>
            <div class="input-form">
                <asp:TextBox ID="SignupPassword" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[/!@#$%^&_*=+-]).{8,}$" runat="server" required type="password" placeholder="Password"></asp:TextBox>
            </div>
            <div class="input-form">
                <asp:TextBox ID="ConfirmPassword" runat="server" required type="password" placeholder="Confirm Password"></asp:TextBox>
            </div>
            <div class="input-form">
                <asp:Button ID="SignupBtn" runat="server" Text="Register" required OnClick="SignupBtn_Click" />
            </div>
    </form>
</body>
</html>

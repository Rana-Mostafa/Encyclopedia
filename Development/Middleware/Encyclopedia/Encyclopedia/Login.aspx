<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Encyclopedia.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="CSS/Signup.css">
</head>
<body>

    <form id="form1" runat="server">
        <div class="login-form">

            <h2>Login</h2>

            <div class="input-form">
                <asp:TextBox ID="UserName" runat="server" MaxLength="30" minlength="4" type="text" placeholder="username"></asp:TextBox>
            </div>

            <div class="input-form">
                <asp:TextBox ID="LoginPassword" runat="server" MaxLength="30" minlength="8" type="password" placeholder="password"></asp:TextBox>
            </div>

            <div class="input-form">
                <asp:Button ID="LoginBtn" runat="server" Text="Login" required OnClick="LoginBtn_Click" />
            </div>
            <div class="input-form">
                <asp:Button ID="signupBtn" runat="server" Text="SignUp" required OnClick="signupBtn_Click1" />
            </div>
    </form>
</body>
</html>

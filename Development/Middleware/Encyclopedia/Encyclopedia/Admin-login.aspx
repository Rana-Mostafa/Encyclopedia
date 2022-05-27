<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-login.aspx.cs" Inherits="Encyclopedia.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-form">
			
				<h2>Login</h2>
				
				<div class="input-form">
					<asp:TextBox ID="UserName" runat="server" maxlength="30" minlength="4"  type="text"  placeholder="username"></asp:TextBox> 
				</div>
			
				<div class="input-form">
					<asp:TextBox ID="LoginPassword" runat="server" maxlength="30" minlength="8"  type="password" placeholder="password"></asp:TextBox>
				</div>
			
				<div class="input-form">
					<asp:Button ID="LoginBtn" runat="server" Text="Login" href="Admin-Home Page.aspx"  required OnClick="LoginBtn_Click"/> 
				</div>

    </form>
</body>
</html>

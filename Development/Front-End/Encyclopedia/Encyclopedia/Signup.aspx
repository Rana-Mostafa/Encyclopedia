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
					<asp:TextBox ID="UserName" runat="server" maxlength="30" minlength="4" required type="text"  placeholder="username"></asp:TextBox> 
				</div>
				<div class="input-form">
					<asp:TextBox ID="Email" runat="server" maxlength="30" minlength="4" required type="email" placeholder="email"></asp:TextBox>
				</div>
				<div class="input-form">
				    <asp:TextBox ID="SignupPassword" runat="server" maxlength="8" minlength="8" required type="password" placeholder="password"></asp:TextBox>
				</div>
				<div class="input-form">
					<asp:TextBox ID="ConfirmPassword" runat="server" maxlength="8" minlength="8" required type="password" placeholder="confirm password"></asp:TextBox>
					
				</div>
				<div class="input-form">
					 <asp:Button ID="SignupBtn" runat="server" Text="Register" required/> 
				</div>
    </form>
</body>
</html>

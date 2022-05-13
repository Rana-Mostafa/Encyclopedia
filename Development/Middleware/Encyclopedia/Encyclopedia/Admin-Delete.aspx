<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-Delete.aspx.cs" Inherits="Encyclopedia.Admin_Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   		<title> Ensyclopedia </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="CSS/Categories.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
</head>
<body>
    <form id="form1" runat="server">
       <nav class="navbar navbar-expand-lg navbar-light background-color: NONE;">
			<div class="container-fluid">
				<a class="navbar-brand fs-2" href="Admin-Home.aspx" target="_top">Encyclopedia</a>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						
						<div class="nav-link fs-5"> 
						<div class="dropdown">
                        <button class="dropbtn">Delete</button>
                        <div class="dropdown-content">
                        <a href="#">Delete Contenet</a>
                        <a href="#">Delete User</a>
                        </div>
                        </div></div>
				
						
						<div class="nav-link fs-5"> <div class="dropdown">
                        <div class="dropbtn">Categories</div>
                        <div class="dropdown-content">
                        <a href="Admin-Birds and Parrots.aspx">Birds and Parrots</a>
                        <a href="Admin-History.aspx">History</a>
                        <a href="Admin-Space and Universe.aspx">Space and Universe</a>
						<a href="Admin-Plants and Animals.aspx">Animals and Plants</a>
                        </div>
                        </div></div>
					</div>
				</div>
			</div>	
		</nav>
		
	<div align="center">	
		<label for="choose_type">Choose type:</label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Delete Video</asp:ListItem>
            <asp:ListItem>Delete Record</asp:ListItem>
            <asp:ListItem>Delete Articles</asp:ListItem>
        </asp:DropDownList>

 <form action="/url" method="GET">
	 	<label for="Content_ID">Content ID:</label>
        <asp:TextBox ID="contentID" runat="server" type="text" placeholder="Content ID:" ></asp:TextBox>
	 	<label for="Content_Name">Content Name :</label>
        <asp:TextBox id="contentName" runat="server" type="text" placeholder="Content Name:" ></asp:TextBox>
    </form>
	
 <div id="outer">
					<asp:Button ID="FollowBtn" class="inner" runat="server" Text="Delete" align="center" OnClick="FollowBtn_Click"/>	
	</div>
		 </div>
			<!-- /END THE FEATURETTES -->
		
		<div class="container">
			<footer class="py-1 my-3 border-top" >
				<div class="d-flex justify-content-between py-1">
					<p>&copy; 2022 ITI, Org. All rights reserved.</p>
					
				</div>
			</footer>
		</div>
    </form>
</body>
</html>

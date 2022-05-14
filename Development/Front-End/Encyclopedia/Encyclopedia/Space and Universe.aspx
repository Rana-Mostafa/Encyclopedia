<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Space and Universe.aspx.cs" Inherits="Encyclopedia.Space_and_Universe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Space and Universe </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="CSS\Categories.css">
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
				<a class="navbar-brand fs-2" href="HomeE.aspx" target="_top">Encyclopedia</a>
				<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
					<div class="navbar-nav">
						<a class="nav-link fs-5" href="HomeE.aspx" target="_top"><h5 id="ho">Home</h5></a>
						<a class="nav-link fs-5" href="Login.aspx" target="_top"><h5 id="lo">Login</h5></a>
						<a class="nav-link fs-5" href="Signup.aspx" target="_top"><h5 id="su">Signup</h5></a>
						<div class="nav-link fs-5"> 
						<div class="dropdown">
                        <div class="dropbtn">Post</div>
                        <div class="dropdown-content">
                        <a href="Publish Article.aspx">Publish Article</a>
                        <a href="#">Upload Video</a>
                        <a href="#">Upload Record</a>
                        </div>
                        </div></div>
						
						
						
						<a class="nav-link fs-5"> <div class="dropdown">
                        <div class="dropbtn">Categories</div>
                        <div class="dropdown-content">
                        <a href="Birds and Parrots.aspx">Birds and Parrots</a>
                        <a href="History.aspx">History</a>
                        <a href="Space and Universe.aspx">Space and Universe</a>
						<a href="Animals and Plants.aspx">Animals and Plants</a>
                        </div>
                        </div></a>
						
											<select name="dog-names" id="NF">
  <option value="rigatoni">Notification</option>
  <option value="dave">Publish Article</option>
  <option value="pumpernickel">Upload Video</option>
  <option value="reeses">Upload Record</option>
</select>
						
						<a class="nav-link fs-5"> <img src="Images/Notification.png" width="25" height="25">
						</a>
						
					</div>
					<asp:Button ID="FollowBtn" class="button2" runat="server" Text="Follow" align="center"/>
				</div>
			</div>
		</nav>
		
		<center>
			<div class="card-deck">
				<div class="card">
					<img class="card-img-top" src="Images/solaraddress.en.png" alt="galaxy1">
					<div class="card-body">
					
						<h5 class="card-title">Galaxy</h5>
						<p class="card-text text-left">When you look up at stars in the night sky, you’re seeing other stars in the Milky Way. If it’s really dark, far away from lights from cities and houses, you can even see the dusty bands of the Milky Way stretch across the sky.</p>
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="Images/galaxy2.jpg" alt="galaxy2">
					<div class="card-body">
						<h5 class="card-title">Solar System</h5>
						<p class="card-text text-left">Our solar system consists of our star, the Sun, and everything bound to it by gravity – the planets Mercury, Venus, Earth,<span id="dots">...</span><span id="more">
						 Mars, Jupiter, Saturn, Uranus, and Neptune; dwarf planets such as Pluto; dozens of moons; and millions of asteroids, comets, and meteoroids</span></p>
                        <button onclick="myFunction()" id="myBtn">Read more</button>     
					</div>
				</div>
				<div class="card">
					<img class="card-img-top" src="Images/earth.jpg" alt="Earth">
					<div class="card-body">
						<h5 class="card-title">Earth</h5>
						<p class="card-text text-left">While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal.</p>
					</div>
					
				</div>
				
			</div>
			
			<script>
function myFunction() {
  var dots = document.getElementById("dots");
  var moreText = document.getElementById("more");
  var btnText = document.getElementById("myBtn");

  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btnText.innerHTML = "Read more"; 
    moreText.style.display = "none";
  } else {
    dots.style.display = "none";
    btnText.innerHTML = "Read less"; 
    moreText.style.display = "inline";
  }
}
            </script>
			
		</center>
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

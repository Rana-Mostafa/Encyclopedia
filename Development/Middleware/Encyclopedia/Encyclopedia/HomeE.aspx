<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeE.aspx.cs" Inherits="Encyclopedia.HomeE" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title> Encyclopedia </title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" type="text/css" href="CSS/Home.css">

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
						
						
						<div class="nav-link fs-5"> <div class="dropdown">
                        <button class="dropbtn">Categories</button>
                        <div class="dropdown-content">
                        <a href="Birds and Parrots.aspx">Birds and Parrots</a>
                        <a href="History.aspx">History</a>
                        <a href="Space and Universe.aspx">Space and Universe</a>
						<a href="Animals and Plants.aspx">Animals and Plants</a>
                        </div>
                        </div></div>
						
						<a class="nav-link fs-5"> <div class="container">
                       
						<asp:DropDownList id="DropDownList1" runat="server" Class="NF">
							<asp:ListItem Value="">Notification</asp:ListItem>
							<asp:ListItem>Publish Article</asp:ListItem>
							<asp:ListItem>Upload Video</asp:ListItem>
							<asp:ListItem>Upload Record</asp:ListItem>
						</asp:DropDownList>
							 <img src="Images/Notification.png" width="25" height="25">
						
						
                        
                       </div>
						</a>
					</div>
				</div>
			</div>
		</nav>
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100" src="Images/London Stag Image _ National Geographic Your Shot Photo of the Day.jpg" alt="First slide" width="200" height="520">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="Images/download.jpg" alt="Second slide" width="200" height="520">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="Images/sspace.jpg" alt="Third slide" width="200" height="520">
				</div>

		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		  </a>
		</div>
		
		<div class="container marketing">
			<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
				<!-- Three columns of text below the carousel -->
				<br><br>
				<center>
					<div class="row">
						<div class="col-lg-3">
							
								<img class="bd-placeholder-img rounded-circle" width="200" height="200" src="Images/Flickriver.jpg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false">
							</a>
							<h2>Birds and Parrots</h2> 
						</div>
						<!-- /.col-lg-4 -->
				  
						<div class="col-lg-3">
							
								<img class="bd-placeholder-img rounded-circle" width="200" height="200" src="Images/History.jpg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false">
							</a>
							<h2>History</h2>					
						</div>
						<!-- /.col-lg-4 -->
						
						<div class="col-lg-3">
							
								<img class="bd-placeholder-img rounded-circle" width="200" height="200" src="Images/Galaxy.png" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false">
							</a>
							<h2>Space and Universe</h2>
						</div>
						
						<div class="col-lg-3">
							
								<img class="bd-placeholder-img rounded-circle" width="200" height="200" src="Images/panda.jpg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false">
							</a>
							<h2>Animals and Plants</h2>
						</div>
						<!-- /.col-lg-4 -->
					</div>
					<!-- /.row -->
				</center>
			</div>


			<!-- START THE FEATURETTES -->

			<hr class="featurette-divider">
	
			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading">Birds and Parrots </h2>
					<p class="lead">Parrots are birds of all colors that usually originate from a warm habitat — think rainforests, grasslands, savannas, semi-arid regions, and even islands. A few species buck this trend and prefer colder climates, such as the Kea parrot, which inhabits the alpine regions of the South Island of New Zealand.</p>
				</div>
				<div class="col-md-5 order-md-1">
					<img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="525" height="350" src="Images/Australian superb fairy-wrens.jpg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
				</div>
			</div>
				
			
	

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading">History</h2>
					<p class="lead">Ancient history is the aggregate of past events[1] from the beginning of writing and recorded human history and extending as far as late antiquity. The phrase may be used either to refer to the period of time or the academic discipline. The academic study of ancient history can be either scientific (archaeology, with the examination of physical evidence) or humanistic (the study of history through texts, poetry, and linguistics).</p>
				</div>
				<div class="col-md-5 order-md-1">
					<img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="525" height="350" src="Images/history1.jpg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
				</div>
			</div>
				

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading">Space and Universe</h2>
					<p class="lead">Earth and the Moon are part of the universe, as are the other planets and their many dozens of moons. Along with asteroids and comets, the planets orbit the Sun. The Sun is one among hundreds of billions of stars in the Milky Way galaxy, and most of those stars have their own planets, known as exoplanets.</p>
				</div>
				<div class="col-md-5 order-md-1">
					<img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="525" height="350" src="Images/space.jpg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
				</div>
			</div>
			
			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading">Animals and Plants</h2>
					<p class="lead">From eastern snake-necked turtles in Murray Valley National Park to brown-striped frogs in Murramarang National Park, and cabbage palms of Wallingat National Park to the wonga wonga vines of Weddin Mountains National Park, the diversity of Australian animals and native plants in NSW national parks is extraordinary.</p>
				</div>
				<div class="col-md-5 order-md-1">
					<img class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="525" height="350" src="Images/swamp-wallaby-01.jpg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
				</div>
			</div>
			
			</div>
			
			<!-- /END THE FEATURETTES -->
		</div>
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

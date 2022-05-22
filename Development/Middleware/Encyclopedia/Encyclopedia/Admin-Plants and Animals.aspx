<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin-Plants and Animals.aspx.cs" Inherits="Encyclopedia.Admin_Plants_and_Animals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Animals and Plants </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="CSS/Categories.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">

    <style>
        #Del {
            font-family: 'Baloo Bhaijaan 2', 'cursive';
            font-size: 1.5rem;
            color: #6a6b6e;
            padding-top: 4px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light background-color: NONE;">
            <div class="container-fluid">
                <asp:LinkButton ID="LinkButton1" class="navbar-brand fs-2" runat="server" OnClick="Home_Click" target="_top">Encyclopedia</asp:LinkButton>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <asp:LinkButton ID="LinkButton2" class="nav-link fs-5" runat="server" OnClick="Home_Click" target="_top"><h5 id="ho">Home</h5></asp:LinkButton>



                        <div class="nav-link fs-5">
                            <div class="dropdown">
                                <button class="dropbtn">
                                    <h5 id="ho">Delete</h5>
                                </button>
                                <div class="dropdown-content">
                                    <asp:LinkButton ID="DeleteUser" class="linkstyle" runat="server" OnClick="DeleteUser_Click">Delete User</asp:LinkButton>
                                    <asp:LinkButton ID="DeleteContent" class="linkstyle" runat="server" OnClick="DeleteContent_Click">Delete Contenet</asp:LinkButton>
                                </div>
                            </div>
                        </div>

                        <div class="nav-link fs-5">
                            <div class="dropdown">
                                <button class="dropbtn">
                                    <h5 id="ho">Categories</h5>
                                </button>
                                <div class="dropdown-content">
                                    <asp:LinkButton ID="Birds" class="linkstyle" runat="server" OnClick="Birds_Click"> Birds and Parrots</asp:LinkButton>
                                    <asp:LinkButton ID="History" class="linkstyle" runat="server" OnClick="History_Click"> History</asp:LinkButton>
                                    <asp:LinkButton ID="Space" class="linkstyle" runat="server" OnClick="Space_Click"> Space and Universe</asp:LinkButton>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </nav>


        <center>
            <style>
                .card-title {
                    float: left;
                }

                .card-btn {
                    float: right;
                }

                .card-body {
                    height: 80px;
                }
            </style>
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="Images/owl1.jpg" alt="parrot1">
                    <div class="card-body">

                        <asp:Label CssClass="card-title" ID="firsttitle" runat="server"></asp:Label>
                        <asp:Button ID="Card1" runat="server" OnClick="ReadMoreBTn" Text="Read more" CssClass="card-btn" />

                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="Images/girrafs.jpg" alt="parrot2">
                    <div class="card-body">
                        <asp:Label CssClass="card-title" ID="middletitle" runat="server"></asp:Label>
                        <asp:Button ID="Card2" runat="server" OnClick="ReadMoreBTn" Text="Read more" CssClass="card-btn" />
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="Images/lilac.jpg" alt="parrot3">
                    <div class="card-body">
                        <asp:Label CssClass="card-title" ID="lasttitle" runat="server"></asp:Label>
                        <asp:Button ID="Card3" runat="server" OnClick="ReadMoreBTn" Text="Read more" CssClass="card-btn" />

                    </div>

                </div>

            </div>



        </center>


        <div class="container">
            <footer class="py-1 my-3 border-top" style="position: absolute; bottom: 0; width: 80%">
                <div class="d-flex justify-content-between py-1">
                    <p>&copy; 2022 ITI, Org. All rights reserved.</p>
                </div>
            </footer>
        </div>
    </form>
</body>
</html>

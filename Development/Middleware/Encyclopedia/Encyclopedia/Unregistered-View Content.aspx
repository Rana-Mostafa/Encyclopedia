<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Unregistered-View Content.aspx.cs" Inherits="Encyclopedia.Unregistered_View_Content" %>

<!DOCTYPE html>

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
                <asp:LinkButton ID="logoBtn" class="navbar-brand fs-2" runat="server" OnClick="Home_Click" target="_top">Encyclopedia</asp:LinkButton>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <asp:LinkButton ID="homeBtn" class="nav-link fs-5" runat="server" OnClick="Home_Click" target="_top"><h5 id="ho">Home</h5></asp:LinkButton>

                        <div class="nav-link fs-5">
                            <div class="dropdown">
                                <button class="dropbtn">
                                    <h5 id="ho">Categories</h5>
                                </button>
                                <div class="dropdown-content">
                                    <asp:LinkButton ID="BirdsBtn" class="linkstyle" runat="server" OnClick="Birds_Click">Birds and Parrots</asp:LinkButton>
                                    <asp:LinkButton ID="HistoryBtn" class="linkstyle" runat="server" OnClick="History_Click">History</asp:LinkButton>
                                    <asp:LinkButton ID="SpaceBtn" class="linkstyle" runat="server" OnClick="Space_Click">Space and Universe</asp:LinkButton>
                                    <asp:LinkButton ID="AnimalBtn" class="linkstyle" runat="server" OnClick="Animals_Click">Animals and Plants</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <asp:LinkButton ID="loginBtn" class="nav-link fs-5 logout" runat="server" OnClick="login_Click" target="_top"><h5 id="ho">Login</h5></asp:LinkButton>
                <asp:LinkButton ID="sigupBtn" class="nav-link fs-5 logout" runat="server" OnClick="signup_Click" target="_top"><h5 id="ho">Sign up</h5></asp:LinkButton>
            </div>
        </nav>


        <asp:Label ID="Label5" runat="server" Text="Article Name:"></asp:Label>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="Publisher Name: "></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label8" runat="server" Text="Content ID: "></asp:Label>
        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label10" runat="server" Text="Category: "></asp:Label>
        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Date: "></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <p>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </p>
        <!-- /END THE FEATURETTES -->

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

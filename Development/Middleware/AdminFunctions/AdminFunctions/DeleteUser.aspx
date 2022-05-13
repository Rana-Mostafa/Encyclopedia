<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteUser.aspx.cs" Inherits="AdminFunctions.DeleteUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="User Email:"></asp:Label>
            <asp:TextBox ID="useremail" runat="server"></asp:TextBox>
            <asp:Button ID="Delete" runat="server" OnClick="Delete_Click" Text="Delete" />
        </div>
    </form>
</body>
</html>

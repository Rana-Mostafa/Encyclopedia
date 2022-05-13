<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadRecordedVoice.aspx.cs" Inherits="Encyclopedia.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Name<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:FileUpload ID="FileUpload1" runat="server" style="margin-top: 0px" />
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload Voice" />
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>

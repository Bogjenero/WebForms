<%@ Page  Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

</head>
<body>
<form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Korisničko ime:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Lozinka:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" style="height: 26px" />
    </p>
</form>
</body>
</html>
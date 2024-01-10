


<%@ Page  Language="C#" AutoEventWireup="true" CodeBehind="Registracija.aspx.cs" Inherits="WebApplication1.Registracija"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

</head>
<body>
<form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Registriraj se"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Korisničko ime:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <asp:Label ID="Label3" runat="server" Text="Puno ime:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Lozinka:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
    </p>
    <asp:Label ID="Label5" runat="server" Text="Ponovljena lozinka:"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Registriraj" OnClick="Button1_Click" style="height: 26px" />
    </p>
</form>
</body>
</html>

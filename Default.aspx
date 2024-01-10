<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Registriraj se"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Korisničko ime:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="119px"></asp:TextBox>
    </p>
    <asp:Label ID="Label3" runat="server" Text="Puno ime:"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Lozinka:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Ponovljenja lozinka:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="Button1" runat="server" style="height: 29px" Text="Registriraj" OnClick="Button1_Click" />

</form>
</body>
</html>

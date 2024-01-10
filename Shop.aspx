<%@ Page  Language="C#" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="WebApplication1.Shop"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

</head>
<body>
<form id="form1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Naziv:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Opis:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" style="height: 26px" />
    </p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdoNetKontroleConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Products] ([Name], [Description]) VALUES (@Name, @Description)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Description] = @Description WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>
</body>
</html>
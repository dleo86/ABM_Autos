<%@ Page Language="C#" AutoEventWireup="true" CodeFile="consultaautos.aspx.cs" Inherits="consultaautos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Ingrese patente:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar" />
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Image ID="Image1" runat="server" />
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" SelectCommand="SELECT au.propietario, au.precio, au.modelo, au.foto, ma.descripcion FROM autos AS au INNER JOIN marcas AS ma ON au.codigomarca = ma.codigo WHERE (au.patente = @patente)">
            <SelectParameters>
                <asp:Parameter Name="patente" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>

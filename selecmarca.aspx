<%@ Page Language="C#" AutoEventWireup="true" CodeFile="selecmarca.aspx.cs" Inherits="selecmarca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Seleccionar una marca"></asp:Label>
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSMarcas" DataTextField="descripcion" DataValueField="codigo">
        </asp:DropDownList>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar" />
        </p>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="DSMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" SelectCommand="SELECT * FROM marcas"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" SelectCommand="select foto from autos where codigomarca=@codigomarca">
            <SelectParameters>
                <asp:Parameter Name="codigomarca" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>

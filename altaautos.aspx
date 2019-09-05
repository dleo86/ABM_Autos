<%@ Page Language="C#" AutoEventWireup="true" CodeFile="altaautos.aspx.cs" Inherits="altaautos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 390px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Patente:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Propietario:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label3" runat="server" Text="Precio:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Modelo:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label5" runat="server" Text="Marca:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="DSMarcas" DataTextField="descripcion" DataValueField="codigo">
        </asp:DropDownList>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Foto:"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="DSMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" SelectCommand="SELECT * FROM [marcas]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" InsertCommand="INSERT INTO [autos] VALUES (@patente, @propietario, @precio, @codigomarca, @foto, @modelo) " SelectCommand="SELECT * FROM autos">
            <InsertParameters>
                <asp:Parameter Name="patente" />
                <asp:Parameter Name="propietario" />
                <asp:Parameter Name="precio" />
                <asp:Parameter Name="codigomarca" />
                <asp:Parameter Name="foto" />
                <asp:Parameter Name="modelo" />
            </InsertParameters>
        </asp:SqlDataSource>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
        </p>
    </form>
</body>
</html>

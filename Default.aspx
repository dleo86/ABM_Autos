﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/abmmarcas.aspx">ABM de Marcas</asp:HyperLink>
        <br />
    
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/altaautos.aspx">Alta de autos</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/consultaautos.aspx">Consulta por patente</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/selecmarca.aspx">Consulta por marca</asp:HyperLink>
        <p>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/borrarautos.aspx">Borrado de un auto</asp:HyperLink>
        </p>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/autosxmodelo.aspx">Autos por modelo</asp:HyperLink>
    </form>
</body>
</html>

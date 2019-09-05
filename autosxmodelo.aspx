<%@ Page Language="C#" AutoEventWireup="true" CodeFile="autosxmodelo.aspx.cs" Inherits="autosxmodelo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        Ingrese año inicial:<asp:TextBox ID="TextBox1" runat="server"  Width="177px"></asp:TextBox>
        <p>
            Ingrese año final:<asp:TextBox ID="TextBox2" runat="server" Width="177px"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Mostrar vehículos" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
        </p>
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" SelectCommand="select foto from autos where modelo&gt;=@modelo1 and modelo&lt;=@modelo2">
            <SelectParameters>
                <asp:Parameter Name="modelo1" />
                <asp:Parameter Name="modelo2" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
    </form>
</body>
</html>

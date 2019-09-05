<%@ Page Language="C#" AutoEventWireup="true" CodeFile="borrarautos.aspx.cs" Inherits="borrarautos" %>

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
        Ingrese la patente del auto a borrar:<asp:TextBox ID="TextBox1" runat="server" Width="209px"></asp:TextBox>
        <br />
        <asp:SqlDataSource ID="DSAutos" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" DeleteCommand="delete from autos where patente=@patente 
"  SelectCommand="select foto from autos where patente=@patente 
">
            <DeleteParameters>
                <asp:Parameter Name="patente" />
            </DeleteParameters>
            <SelectParameters>
                <asp:Parameter Name="patente" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
        </p>
    </form>
</body>
</html>

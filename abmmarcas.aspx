<%@ Page Language="C#" AutoEventWireup="true" CodeFile="abmmarcas.aspx.cs" Inherits="abmmarcas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 255px;
        }
    </style>
</head>
<body style="height: 236px">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="codigo" DataSourceID="DSMarcas" ForeColor="#333333" GridLines="None" Width="150px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" SortExpression="codigo" />
                <asp:BoundField DataField="descripcion" HeaderText="descripcion" SortExpression="descripcion" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Text="Ingrese descripcion de la marca:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="223px"></asp:TextBox>
        <asp:SqlDataSource ID="DSMarcas" runat="server" ConnectionString="<%$ ConnectionStrings:tp2ConnectionString %>" DeleteCommand="DELETE FROM [marcas] WHERE [codigo] = @codigo" InsertCommand="INSERT INTO [marcas] VALUES (3, @descripcion)" SelectCommand="SELECT * FROM [marcas]" UpdateCommand="UPDATE [marcas] SET [descripcion] = @descripcion WHERE [codigo] = @codigo">
            <DeleteParameters>
                <asp:Parameter Name="codigo" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="descripcion" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="descripcion" />
                <asp:Parameter Name="codigo" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
        <p>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Regresar</asp:HyperLink>
        </p>
    </form>
</body>
</html>

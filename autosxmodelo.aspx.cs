using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class autosxmodelo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.DSAutos.SelectParameters["modelo1"].DefaultValue = this.TextBox1.Text;
        this.DSAutos.SelectParameters["modelo2"].DefaultValue = this.TextBox2.Text;
        this.DSAutos.DataSourceMode = SqlDataSourceMode.DataReader;
        SqlDataReader registros = (SqlDataReader)this.DSAutos.Select(DataSourceSelectArguments.Empty);
        this.Label1.Text = "";
        while (registros.Read() == true)
        {
            this.Label1.Text = this.Label1.Text + "<img src=\"" + registros["foto"] + "\"><br><br>";
        }
    }


   
}

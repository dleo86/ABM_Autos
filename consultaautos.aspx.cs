using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class consultaautos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        this.DSAutos.SelectParameters["patente"].DefaultValue =
this.TextBox1.Text;

        this.DSAutos.DataSourceMode = SqlDataSourceMode.DataReader;

        SqlDataReader registro =
        (SqlDataReader)this.DSAutos.Select(DataSourceSelectArguments.Empty);

        if (registro.Read())
        {

            this.Image1.ImageUrl = registro["foto"].ToString();

            this.Label1.Text = "Propiegario" + registro["propietario"] +
            "<br>" +

            "Precio:" + registro["precio"] + "<br>" +

            "Modelo:" + registro["modelo"] + "<br>" +

            "Marca:" + registro["descripcion"];
        }

        else
        {

            this.Label1.Text = "No existe un auto con dicha patente";
        }
    }
}
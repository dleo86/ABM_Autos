using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class altaautos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath(".") + "/" + this.FileUpload1.FileName);

        this.DSAutos.InsertParameters["patente"].DefaultValue =
        this.TextBox1.Text;

        this.DSAutos.InsertParameters["propietario"].DefaultValue =
        this.TextBox2.Text;

        this.DSAutos.InsertParameters["precio"].DefaultValue =
        this.TextBox3.Text;

        this.DSAutos.InsertParameters["modelo"].DefaultValue =
        this.TextBox4.Text;

        this.DSAutos.InsertParameters["codigomarca"].DefaultValue =
        this.DropDownList1.SelectedValue;

        this.DSAutos.InsertParameters["foto"].DefaultValue =
        this.FileUpload1.FileName;

        this.DSAutos.Insert();

        this.Label7.Text = "Los datos fueron cargados";

        this.TextBox1.Text = "";
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
        this.TextBox4.Text = "";
    }
}
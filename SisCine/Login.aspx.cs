using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SisCine
{
    public partial class Login1 : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SisCine.Properties.Settings.conexion"].ConnectionString);


            if (Request.Params["men"] != null)
            {
                string men = Request.Params["men"];

                if (men == "1")
                {
                    lblMensaje.Text = "Debes iniciar Sesion";
                }
            }
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {

            SqlCommand com = new SqlCommand("Acceso", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("user", TextBox1.Text);
            SqlParameter p2 = new SqlParameter("pass", TextBox2.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);

            con.Open();
            SqlDataReader rd = com.ExecuteReader();


            if (rd.HasRows)
            {
                rd.Read();
                Session["user"] = rd.GetString(1);
                Session["cod_tar"] = rd.GetString(0);
                Response.Redirect("Default.aspx");
                con.Close();

            }

            else
            {
                lblMensaje.Text = "Nombre de usuario o contraseña no válidos.";
                con.Close();
            }


        }

        protected void btnLimp_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }
    }
}
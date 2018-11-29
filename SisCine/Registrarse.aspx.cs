using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SisCine
{
    public partial class Registrarse : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter adaptador;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SisCine.Properties.Settings.conexion"].ConnectionString);

            if (Request.Params["men"] != null)
            {
                string men = Request.Params["men"];

                if (men == "1")
                {
                    //lblMensaje.Text = "Debes iniciar Sesion";
                }
            }
        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
           
            SqlCommand com = new SqlCommand("SP_RegistrarUser", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("cod_tarjeta", txtCodTar.Text);
            SqlParameter p2 = new SqlParameter("contrasenha", txtPass.Text);
            SqlParameter p3 = new SqlParameter("nombres", txtNomb.Text);
            SqlParameter p4 = new SqlParameter("@apellidos", txtApe.Text);
            SqlParameter p5 = new SqlParameter("dni", txtDni.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            com.Parameters.Add(p3);
            com.Parameters.Add(p4);
            com.Parameters.Add(p5);
            // com.Parameters.Add(p6);

            //con.Open();
            //SqlDataReader rd = com.ExecuteReader();
            adaptador = new SqlDataAdapter(com);
            con.Open();
            com.ExecuteScalar();
            con.Close();

           lblMensaje.Text="Se ha registrado correctamente";


        }

        protected void btnLimp_Click(object sender, EventArgs e)
        {

        }
    }
}
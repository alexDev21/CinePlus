using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SisCine
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strcon = "Data Source=.;Initial Catalog=SISCINE;Integrated Security=True";
            SqlConnection con = new SqlConnection(strcon);

            SqlCommand com = new SqlCommand("Acceso", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("user", TextBox2.Text);
            SqlParameter p2 = new SqlParameter("pass", TextBox3.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                rd.Read();
                Response.Redirect("bienvenido.aspx");
            }

            else
            {
                lblMensaje.Text = "Nombre de usuario o contraseña no válidos.";

            }

        
    }



    }
}
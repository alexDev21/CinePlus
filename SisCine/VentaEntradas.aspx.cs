using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace SisCine
{
    public partial class VentaEntradas : System.Web.UI.Page
    {
        SqlDataAdapter adaptador;
        DateTime thisDay = DateTime.Today;
        SqlConnection con;

       
        protected void Page_Load(object sender, EventArgs e)
        {

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SisCine.Properties.Settings.conexion"].ConnectionString);
            
            //try
            //{
            //    if (Session["user"] != null)
            //    {
            //        string nombre = Session["user"].ToString();
            //        lblBienvenido.Visible = true;
            //        lblBienvenido.Text = "Bienvenido " + nombre;
            //        btnCerrarSesion.Visible = true;

            //    }



            //    if (Request.Params["men"] != null)
            //    {
            //        String men = Request.Params["men"];

            //        if (men == "1")
            //        {
            //            lblBienvenido.Text = "Debes iniciar Sesion";
            //        }
            //    }



            //}
            //catch (Exception ex)
            //{
            //    Response.Redirect("Default.aspx?men=1");
            //}
        
    }

        protected void btnComp1_Click(object sender, EventArgs e)
        {
          


            if (txtCantNi == null)
            {
                txtCantNi.Text = "0";
            }

            if (txtCantAd == null)
            {
                txtCantAd.Text = "0";
            }


            SqlCommand com = new SqlCommand("SP_Venta", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("idpelicula", 1);
            SqlParameter p2 = new SqlParameter("idcine", txtCine.Text);
            SqlParameter p3 = new SqlParameter("fecha", thisDay);
            SqlParameter p4 = new SqlParameter("funcion", txtFuncion.Text);
            SqlParameter p5 = new SqlParameter("cant_tick_niños", Convert.ToInt32(txtCantNi.Text));
            SqlParameter p6 = new SqlParameter("cant_tick_adultos", Convert.ToInt32(txtCantAd.Text));

            

            SqlParameter p7 = new SqlParameter("total", 1);
            SqlParameter p8 = new SqlParameter("iduser", Session["cod_tar"].ToString());
            SqlParameter p9 = new SqlParameter("sala", "A5");
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            com.Parameters.Add(p3);
            com.Parameters.Add(p4);
            com.Parameters.Add(p5);
            com.Parameters.Add(p6);
            com.Parameters.Add(p7);
            com.Parameters.Add(p8);
            com.Parameters.Add(p9);

            adaptador = new SqlDataAdapter(com);
            con.Open();
            com.ExecuteScalar();
            con.Close();

            lblMensaje.Text = "COMPRA REALIZADA CON EXITO";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtCantNi2 == null)
            {
                txtCantNi2.Text = "0";
            }

            if (txtCantAd2 == null)
            {
                txtCantAd2.Text = "0";
            }


            SqlCommand com = new SqlCommand("SP_Venta", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("idpelicula", 2);
            SqlParameter p2 = new SqlParameter("idcine", txtCine2.Text);
            SqlParameter p3 = new SqlParameter("fecha", thisDay);
            SqlParameter p4 = new SqlParameter("funcion", txtFuncion2.Text);
            SqlParameter p5 = new SqlParameter("cant_tick_niños", Convert.ToInt32(txtCantNi2.Text));
            SqlParameter p6 = new SqlParameter("cant_tick_adultos", Convert.ToInt32(txtCantAd2.Text));



            SqlParameter p7 = new SqlParameter("total", 1);
            SqlParameter p8 = new SqlParameter("iduser", Session["cod_tar"].ToString());
            SqlParameter p9 = new SqlParameter("sala", "B5");
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            com.Parameters.Add(p3);
            com.Parameters.Add(p4);
            com.Parameters.Add(p5);
            com.Parameters.Add(p6);
            com.Parameters.Add(p7);
            com.Parameters.Add(p8);
            com.Parameters.Add(p9);

            adaptador = new SqlDataAdapter(com);
            con.Open();
            com.ExecuteScalar();
            con.Close();
            lblMensaje.Text = "COMPRA REALIZADA CON EXITO";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (txtCantNi3 == null)
            {
                txtCantNi3.Text = "0";
            }

            if (txtCantAd3 == null)
            {
                txtCantAd3.Text = "0";
            }


            SqlCommand com = new SqlCommand("SP_Venta", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("idpelicula", 3);
            SqlParameter p2 = new SqlParameter("idcine", DropDownList3.Text);
            SqlParameter p3 = new SqlParameter("fecha", thisDay);
            SqlParameter p4 = new SqlParameter("funcion", DropDownList3_2.Text);
            SqlParameter p5 = new SqlParameter("cant_tick_niños", Convert.ToInt32(txtCantNi3.Text));
            SqlParameter p6 = new SqlParameter("cant_tick_adultos", Convert.ToInt32(txtCantAd3.Text));



            SqlParameter p7 = new SqlParameter("total", 1);
            SqlParameter p8 = new SqlParameter("iduser", Session["cod_tar"].ToString());
            SqlParameter p9 = new SqlParameter("sala", "B5");
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            com.Parameters.Add(p3);
            com.Parameters.Add(p4);
            com.Parameters.Add(p5);
            com.Parameters.Add(p6);
            com.Parameters.Add(p7);
            com.Parameters.Add(p8);
            com.Parameters.Add(p9);

            adaptador = new SqlDataAdapter(com);
            con.Open();
            com.ExecuteScalar();
            con.Close();
            lblMensaje.Text = "COMPRA REALIZADA CON EXITO";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox4 == null)
            {
                TextBox4.Text = "0";
            }

            if (TextBox4_2 == null)
            {
                TextBox4_2.Text = "0";
            }


            SqlCommand com = new SqlCommand("SP_Venta", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("idpelicula", 4);
            SqlParameter p2 = new SqlParameter("idcine", DropDownList4.Text);
            SqlParameter p3 = new SqlParameter("fecha", thisDay);
            SqlParameter p4 = new SqlParameter("funcion", DropDownList4_2.Text);
            SqlParameter p5 = new SqlParameter("cant_tick_niños", Convert.ToInt32(TextBox4.Text));
            SqlParameter p6 = new SqlParameter("cant_tick_adultos", Convert.ToInt32(TextBox4_2.Text));



            SqlParameter p7 = new SqlParameter("total", 1);
            SqlParameter p8 = new SqlParameter("iduser", Session["cod_tar"].ToString());
            SqlParameter p9 = new SqlParameter("sala", "C5");
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            com.Parameters.Add(p3);
            com.Parameters.Add(p4);
            com.Parameters.Add(p5);
            com.Parameters.Add(p6);
            com.Parameters.Add(p7);
            com.Parameters.Add(p8);
            com.Parameters.Add(p9);

            adaptador = new SqlDataAdapter(com);
            con.Open();
            com.ExecuteScalar();
            con.Close();
            lblMensaje.Text = "COMPRA REALIZADA CON EXITO";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (TextBox5 == null)
            {
                TextBox5.Text = "0";
            }

            if (TextBox5_2 == null)
            {
                TextBox5_2.Text = "0";
            }


            SqlCommand com = new SqlCommand("SP_Venta", con);
            com.CommandType = CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("idpelicula", 7);
            SqlParameter p2 = new SqlParameter("idcine", DropDownList5.Text);
            SqlParameter p3 = new SqlParameter("fecha", thisDay);
            SqlParameter p4 = new SqlParameter("funcion", DropDownList5_2.Text);
            SqlParameter p5 = new SqlParameter("cant_tick_niños", Convert.ToInt32(TextBox5.Text));
            SqlParameter p6 = new SqlParameter("cant_tick_adultos", Convert.ToInt32(TextBox5_2.Text));



            SqlParameter p7 = new SqlParameter("total", 1);
            SqlParameter p8 = new SqlParameter("iduser", Session["cod_tar"].ToString());
            SqlParameter p9 = new SqlParameter("sala", "D5");
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            com.Parameters.Add(p3);
            com.Parameters.Add(p4);
            com.Parameters.Add(p5);
            com.Parameters.Add(p6);
            com.Parameters.Add(p7);
            com.Parameters.Add(p8);
            com.Parameters.Add(p9);

            adaptador = new SqlDataAdapter(com);
            con.Open();
            com.ExecuteScalar();
            con.Close();
            lblMensaje.Text = "COMPRA REALIZADA CON EXITO";
        }

        //protected void btnCerrarSesion_Click(object sender, EventArgs e)
        //{
        //    Session.Remove("user");
        //    Response.Redirect("Default.aspx");
        //}
    }
}
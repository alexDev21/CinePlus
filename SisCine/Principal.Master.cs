using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SisCine
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            //    //Response.Redirect("Default.aspx?men=1");
            //}
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {

        }
    }
}
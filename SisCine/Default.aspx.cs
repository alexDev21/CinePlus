using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SisCine
{
    public partial class Default : System.Web.UI.Page
    {
        //ContentPlaceHolder mpContentPlaceHolder;
        //Label mpLabel;

        protected void Page_Load(object sender, EventArgs e)
        {

            
            //mpContentPlaceHolder =(ContentPlaceHolder)Master.FindControl("bienvenido");
            //if (mpContentPlaceHolder != null)
            //{
            //    mpLabel =(Label)mpContentPlaceHolder.FindControl("lblBienvenido");
            //    if (mpLabel != null)
            //    {
            //        mpLabel.Text = "TextBox found!";
            //    }

            //}

                try
            {
                if (Session["user"] != null)
                {
                    string nombre = Session["user"].ToString();
                    lblBienvenido.Visible = true;
                    lblBienvenido.Text = "Bienvenido " + nombre;
                    btnCerrarSesion.Visible = true;
                    btnHistorial.Visible = true;

                }



                if (Request.Params["men"] != null)
                {
                    String men = Request.Params["men"];

                    if (men == "1")
                    {
                        lblBienvenido.Text = "Debes iniciar Sesion";
                    }
                }



            }
            catch (Exception ex)
            {
               Response.Redirect("Default.aspx?men=1");
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("Default.aspx");
        }

        protected void btnHistorial_Click(object sender, EventArgs e)
        {
           // Response.Redirect("WebForm1.aspx");
            Response.Redirect("Mihistorial.aspx");
        }
    }
}
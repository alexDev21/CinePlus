using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SisCine
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           /* Principal pagMaster = Page.Master as Principal;
            
            try
            {
                if (Session["user"] != null)
                {
                    string nombre = Session["user"].ToString();
                    //lblBienvenido.Visible = true;
                    //lblBienvenido.Text = "Bienvenido " + nombre;
                    //btnCerrarSesion.Visible = true;
                    //btnHistorial.Visible = true;
                }
         
                if (Request.Params["men"] != null)
                {
                    String men = Request.Params["men"];

                    if (men == "1")
                    {
                        //lblBienvenido.Text = "Debes iniciar Sesion";
                    }
                }          
            }
            catch (Exception ex)
            {
               Response.Redirect("Default.aspx?men=1");
            }*/
        }

        [WebMethod]
        public static string btnCerrarSesion_Click()
        {
            HttpContext.Current.Session.Remove("user");
            return "exito";
        }

    }
}
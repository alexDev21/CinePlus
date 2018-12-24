using SisCine.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SisCine
{
    public partial class MiHistorial : System.Web.UI .Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (HttpContext.Current.Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            
        }

        protected void Unnamed1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        [WebMethod(EnableSession = true)]
        public static string ListaVentas()
        {

            VentaDataAccess da = new VentaDataAccess();
            var t = da.GetVentas();
            return t;
        }
    }
}
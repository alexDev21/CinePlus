using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using SisCine.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace SisCine.DataAccess
{
    public  class VentaDataAccess
    {
        
        public  string /*List<Venta>*/ GetVentas()
        {
            List<Venta> listVentas = new List<Venta>();
            SqlConnection con=null;
            Venta objVenta = null;

            var json = new JObject();

            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["SisCine.Properties.Settings.conexion"].ConnectionString);
                con.Open();
                using (var cmd = new SqlCommand("[USP_Listar_Ventas_by_User]", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@user",SqlDbType.VarChar,20).Value = HttpContext.Current.Session["cod_tar"];
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            objVenta = new Venta();
                            objVenta.Id = Convert.ToInt32(dr["idventa"]);
                            objVenta.Pelicula = dr["nombre"].ToString();
                            objVenta.Cine = dr["nombreLocal"].ToString();
                            objVenta.Fecha = Convert.ToDateTime(dr["fecha"].ToString());
                            objVenta.Funcion = dr["funcion"].ToString();
                            objVenta.CantTicketsAdultos = Convert.ToInt32(dr["cant_tick_adultos"].ToString());
                            objVenta.CantTicketsNino = Convert.ToInt32(dr["cant_tick_niños"].ToString());
                            objVenta.IdUSer = dr["iduser"].ToString();
                            objVenta.Sala = dr["sala"].ToString();

                            listVentas.Add(objVenta);
                        }
                    }
                }

                //si model no tiene asignado nada quiere decir q no existe el id,
                //por lo tanto se debe redireccionar o algo asi
                //if (model.id == -1)
                //{
                //    Response.Redirect("Cartelera");
                //}


            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                if (con.State == ConnectionState.Open) { con.Close(); }
            }

            json.Add(new JProperty("aaData", new JArray(
                    from r in listVentas.AsEnumerable()
                    select new JObject(
                         new JProperty("idventa", r.Id),
                         new JProperty("pelicula", r.Pelicula),
                         new JProperty("cine", r.Cine),
                         new JProperty("fecha", r.Fecha.ToShortDateString()),
                         new JProperty("funcion", r.Funcion),
                         new JProperty("cant_tick_adultos", r.CantTicketsAdultos),
                         new JProperty("cant_tick_niños", r.CantTicketsNino),
                         new JProperty("iduser", r.IdUSer),
                         new JProperty("sala", r.Sala)
                         ))));

                //JsonConvert.SerializeObject(listVentas)));
            //string jsonData =JsonConvert.SerializeObject(listVentas);

            return json.ToString();
        }
    }
}
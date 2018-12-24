using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SisCine.Model
{
    public class Venta
    {
        private int _Id;
        private int _idPelicula;
        private string _Pelicula;
        private string _Cine;
        private int _idCine;
        private DateTime _fecha;
        private String _funcion;
        private int _cantTicketsNino;
        private int _cantTicketsAdultos;
        private string _idUSer;

        private String _sala;

        public int Id
        {
            get{ return _Id; }
            set{ _Id = value; }
        }

        public int IdPelicula
        {
            get
            {
                return _idPelicula;
            }

            set
            {
                _idPelicula = value;
            }
        }

        public int IdCine
        {
            get
            {
                return _idCine;
            }

            set
            {
                _idCine = value;
            }
        }

        public DateTime Fecha
        {
            get
            {
                return _fecha;
            }

            set
            {
                _fecha = value;
            }
        }

        public string Funcion
        {
            get
            {
                return _funcion;
            }

            set
            {
                _funcion = value;
            }
        }

        public int CantTicketsNino
        {
            get
            {
                return _cantTicketsNino;
            }

            set
            {
                _cantTicketsNino = value;
            }
        }

        public int CantTicketsAdultos
        {
            get
            {
                return _cantTicketsAdultos;
            }

            set
            {
                _cantTicketsAdultos = value;
            }
        }

        public string IdUSer
        {
            get
            {
                return _idUSer;
            }

            set
            {
                _idUSer = value;
            }
        }

        public string Sala
        {
            get
            {
                return _sala;
            }

            set
            {
                _sala = value;
            }
        }

        public string Cine { get; set; }
        public string Pelicula { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Trabajador
    {
        /// <summary>
        /// la clase padre de Usuario y las propiedades directas del Trabajador
        /// </summary>
        public int Id { get; set; }
        public Usuario ?Usuario { get; set; }
        public int IdLocal {  get; set; }
        public int IdDireccionesServicios { get; set; }

    }
}

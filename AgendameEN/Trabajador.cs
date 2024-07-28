using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Trabajador
    {
        public int Id { get; set; }
        public Usuario ?Usuario { get; set; }
        public int IdLocal {  get; set; }
        public int IdDireccionesServicios { get; set; }

    }
}

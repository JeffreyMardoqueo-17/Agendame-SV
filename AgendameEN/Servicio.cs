using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Servicio
    {
        public int Id { get; set; }
        public string ?Nombre { get; set; }
        public string ?Descripcion { get; set; }
        public int TiempoEstimado { get; set; }
        public decimal Costo { get; set; }
        public int IdCategoria { get; set; }
    }
}

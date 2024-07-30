using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Cita
    {
        public int Id { get; set; }
        public int ConsumidorId { get; set; }
        public int? TrabajadorId { get; set; } // de la persona que presta servicios (trabajador del local)
        public int? IdLocal { get; set; } // Id del local, si aplica
        public int? IdProveedorDeServicios{ get; set; } // Id del proveedor de servicios independiente, si aplica
        public DateTime FechaHora { get; set; }
        public int IdServicio { get; set; }
        
        public string? Estado { get; set; } // pendiente, confirmada, cancelada, etc.

        // Opcional: Lista de pagos relacionados con la cita
        public List<Pago>? Pagos { get; set; }
    }
}

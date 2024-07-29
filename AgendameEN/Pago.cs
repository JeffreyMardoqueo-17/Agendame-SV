using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Pago
    {
        public int Id { get; set; }
        public int CitaId { get; set; } // Relaciona el pago con una cita específica
        public decimal Monto { get; set; } // Monto del pago
        public DateTime FechaPago { get; set; } // Fecha en que se realizó el pago
        public int IdMetodoPago { get; set; } // Método de pago: tarjeta, efectivo, etc.
        public int IdEstadoPago { get; set; } // Estado del pago: pendiente, completado, fallido, etc.
    }
}

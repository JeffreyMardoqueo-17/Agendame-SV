using System;

namespace AgendameEN
{
    public class Pago
    {
        public int Id { get; set; }

        // Relación con Cita: El pago está asociado a una cita
        public int IdCita { get; set; }

        // Monto del pago
        public decimal Monto { get; set; }
        // Porcentaje de pago: 15, 30, 50, 75, 100
        public int Porcentaje { get; set; }

        // Fecha del pago
        public DateTime Fecha { get; set; }

        // Relación con MetodoPago: El método de pago utilizado
        public int IdMetodoPago { get; set; }

        // Relación con EstadoPago: El estado del pago (pendiente, completado, etc.)
        public int IdEstadoPago { get; set; }
    }
}

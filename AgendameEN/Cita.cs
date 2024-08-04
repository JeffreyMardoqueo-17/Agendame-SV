using System;
using System.Collections.Generic;

namespace AgendameEN
{
    public class Cita
    {
        public int Id { get; set; }

        // Relación con Usuario: El consumidor (Cliente) de la cita
        public int ConsumidorId { get; set; }

        // Relación opcional con Usuario: El trabajador del local que presta el servicio
        public int? TrabajadorId { get; set; }

        // Relación opcional con Local: El local donde se realiza la cita, si aplica
        public int? IdLocal { get; set; }

        // Relación opcional con Usuario: El proveedor de servicios independiente, si aplica
        public int? IdProveedorDeServicios { get; set; }

        // Fecha y hora de la cita
        public DateTime FechaHora { get; set; }

        // Relación con Servicio: El servicio que se proporciona en la cita
        public int IdServicio { get; set; }

        // Estado de la cita: pendiente, confirmada, cancelada, etc.
        public string? Estado { get; set; }

        // Relación con Pago: Lista de pagos relacionados con la cita
        public List<Pago>? Pagos { get; set; }
    }
}

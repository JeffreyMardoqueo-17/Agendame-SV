using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Reservas
    {
        public int Id { get; set; }
        public int UsuarioId { get; set; }
        public int ServicioId { get; set; }
        public DateTime Fecha { get; set; }
        public TimeSpan Hora { get; set; }
        public bool Confirmada { get; set; } // 0: No confirmada, 1: Confirmada
    }
}
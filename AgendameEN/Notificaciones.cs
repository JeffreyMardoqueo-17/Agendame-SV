using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Notificaciones
    {
        public int Id { get; set; }
        public int IdUsuario { get; set; }
        public string? Titulo { get; set; }
        public string? Mensaje { get; set; }
        public DateTime Fecha { get; set; }
        public int Estado { get; set; } // 0: No leída, 1: Leída
    }
}
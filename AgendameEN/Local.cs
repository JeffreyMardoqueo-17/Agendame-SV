using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Local
    { 
        public int Id { get; set; }
        public string? Nombre { get; set; }
        public int IdCategoria { get; set; }
        public string? TelefonoLocal { get; set; }
        public string? Horario { get; set; }
        public int TotalTrabajadores { get; set; }
        public int IdDireccionesLocal { get; set; } // FK a DireccionesLocales
        public string? CodigoAutomatico { get; set; }
        public DateTime CodigoExpiracion { get; set; } // Fecha de expiración del codgio de ingreso
        public List<Servicio> ? Servicios { get; set; } // Servicios ofrecidos por el local
        public List<LocalFoto> ? Fotos { get; set; } // Fotos del local
    }
}

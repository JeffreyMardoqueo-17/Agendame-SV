using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AgendameEN
{
    /// <summary>
    /// Tabla Domicilio (Para servicios a domicilio)
    /// </summary>
    public class Domicilio
    {
        public int Id { get; set; }
        public int IdUsuario { get; set; }
        public string? Calle { get; set; }
        public string? Ciudad { get; set; }
        public string? Departamento { get; set; }
        public decimal Latitud { get; set; }
        public decimal Longitud { get; set; }
    }

}
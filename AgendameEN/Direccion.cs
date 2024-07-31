using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Direccion
    {
        public int Id { get; set; }
        public string? Calle { get; set; }
        public string? Ciudad { get; set; }
        public string? Departamento { get; set; }
        public string? Latitud { get; set; }
        public string? Longitud { get; set; }
    }
}
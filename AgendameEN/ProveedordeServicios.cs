using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class ProveedordeServicios
    {
        public int Id { get; set; }
        public Usuario? Usuario { get; set; }
        public string? Horario { get; set; }
        public int IdCategoria { get; set; }
        public List<Servicio>? Servicios { get; set; } ///porque el usuario elegira todos los servicios que estan dentro de la categoria que eleija
    }
}

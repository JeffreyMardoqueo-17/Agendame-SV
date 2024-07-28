using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Usuario
    {
        /// <summary>
        /// Estas son las propiedades que lso 3 tipos de usaurios tienen en comun, propietario,
        /// trbajador y consumidor
        /// </summary>
        public int id { get; set; }
        public string ?Nombre { get; set; }
        public string ?Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public int IdTipoUsuario { get; set; }
        public string ?Telefono { get; set; }
        public string ?Email { get; set; }
        public int IdGenero { get; set; }
        public int IdFotoPerfil { get; set; }
    }
}

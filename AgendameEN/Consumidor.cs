using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Consumidor
    {
        /// <summary>
        /// la clase de usuario que es la padre y las demas propiedades del consumidor
        /// como por ejemplo Favoritos, que favoritos son la lista de Locales y de Proveedores de 
        /// servicios que le gustan, seran un listado de ambas
        /// </summary>
        public int Id { get; set; }
        public Usuario? Usuario { get; set; }
        public List<Favoritos>? Favoritos { get; set; }
    }
}

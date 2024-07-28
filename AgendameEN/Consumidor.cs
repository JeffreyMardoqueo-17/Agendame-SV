using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Consumidor
    {
        public int Id { get; set; }
        public Usuario? Usuario { get; set; }
        public List<Favoritos>? Favoritos { get; set; } 
        public int IdDireccionesUsuarios { get; set; }
    }
}

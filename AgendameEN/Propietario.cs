using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class Propietario
    {
        public int Id { get; set; }
        public Usuario ? Usuario { get; set; }
        public List<Local> ? Locales {  get; set; }
        public int IdDireccionesPropietarios { get; set; }
    }
}

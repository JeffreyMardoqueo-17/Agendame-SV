using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AgendameEN
{
    public class LocalFoto
    {
        public int Id { get; set; }
        public int IdLocal { get; set; } //para saber a que local pertencern estas fotos
        public string? Foto { get; set; }
    }
}

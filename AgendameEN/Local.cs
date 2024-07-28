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
        public string ?Nombre { get; set; }
        public int  IdCategoria { get; set; }
        //public int IdPropietario { get; set; } ///este de aqui seria el propietario
        public string ?TelefonoLocal { get; set; }
        public string ?Horario { get; set; }
        public int TotalTrabajadores { get; set; }
        public string ?CodigoAutoatico { get; set; }
        public DateTime CodigoExpiracion { get; set; } ///esto es para que definamos en cuantos dias o horas tendra validacion el codigo
        public List<Servicio> ?Servicios { get; set; } ///porque el usuario elegira todos los servicios que estan dentro de la categoria que eleija
        public List<LocalFoto> ?Fotos { get; set; } ///para las fotos que el propietario quiera subir de su local
    }
}

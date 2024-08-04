using System;
using System.Collections.Generic;

namespace AgendameEN
{
    public class Propietario
    {
        public int Id { get; set; }

        // Relación con Usuario: Un Propietario está asociado a un Usuario
        public Usuario? Usuario { get; set; }

        // Relación con Local: Un Propietario puede tener muchos Locales
        public List<Local>? Locales { get; set; }
    }
}

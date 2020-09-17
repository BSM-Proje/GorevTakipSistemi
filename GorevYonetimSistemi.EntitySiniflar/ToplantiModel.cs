using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class ToplantiModel
    {
        public string ToplantiAdi { get; set; }
        public string ToplantiIcerigi { get; set; }
        public DateTime SonTarihSaat  { get; set; }
        public string Yer { get; set; }
    }
}

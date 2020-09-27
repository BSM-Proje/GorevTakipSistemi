using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class ToplantiAtamaModel
    {
        public int ToplantiId { get; set; }
        public int ToplantiAtamaId { get; set; }
        public string ToplantiAdi { get; set; }
        public DateTime ToplantiTarihSaat { get; set; }
        public string ToplantiYeri { get; set; }
        public string IlgiliKisi { get; set; }
        public string AtayanKisi { get; set; }

    }
}

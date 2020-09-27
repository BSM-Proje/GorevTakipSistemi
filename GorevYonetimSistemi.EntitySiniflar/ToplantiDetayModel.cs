using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class ToplantiDetayModel
    {
        public int ToplantiDetayId { get; set; }
        public int FkToplantiId { get; set; }
        public string ToplantiAdi { get; set; }
        public bool ToplantiDurum { get; set; }
        public string AlinanKararlar { get; set; }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class BildirimAtamaModel
    {
        public int BildirimId { get; set; }
        public string BildirimIcerik { get; set; }
        public bool BildirimOkumaDurum { get; set; }
        public DateTime BildirimOkumaTarih { get; set; }
        public int BildirimHatirlatmaSayisi { get; set; }
        public string GorevAdi { get; set; }
        public string GorevIcerigi { get; set; }
        public DateTime GorevSonTarihSaat { get; set; }
        public DateTime BildirimGondermeTarih { get; set; }
    }
}

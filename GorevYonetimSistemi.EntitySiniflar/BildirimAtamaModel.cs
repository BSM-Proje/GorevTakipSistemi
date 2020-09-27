using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class BildirimAtamaModel
    {
        private DateTime _tarih;
        public int BildirimId { get; set; }
        public int bildirimAtamaId { get; set; }
        public string BildirimIcerik { get; set; }
        public bool BildirimOkumaDurum { get; set; }
        public DateTime? BildirimOkumaTarih { get; set; }
        public int BildirimHatirlatmaSayisi { get; set; }
        public bool BildirimIptal { get; set; }
        public int GorevId { get; set; }
        public int GorevAtamaId { get; set; }
        public string GorevAdi { get; set; }
        
        public string GorevIcerigi { get; set; }
        public bool GorevOnayDurumu { get; set; }

        public DateTime? GorevSonTarihSaat
        {
            get
            {
                return _tarih;
            }
            set
            {
                if (value != null )
                {
                    _tarih = (DateTime)value;
                }

                else
                {
                    _tarih = DateTime.MinValue;
                }
                
            }
        }

        public DateTime? BildirimGondermeTarih { get; set; }
    }
}

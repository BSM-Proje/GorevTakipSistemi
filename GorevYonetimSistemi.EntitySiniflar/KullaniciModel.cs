using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class KullaniciModel
    {
        public int KisiId { get; set; }
        public int FkOkulId { get; set; }
        public string OkulAdi { get; set; }
        public int FkBolumId { get; set; }
        public string BolumAdi { get; set; }
        public int FkAbdId { get; set; }
        public string AbdAd { get; set; }
        public int FkUnvanId { get; set; }
        public string UnvanAd { get; set; }
        public int FkIdariGorevUnvanId { get; set; }
        public string IdariGorevUnvanAd { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Email { get; set; }
        public string Sifre { get; set; }
        public string Fotograf { get; set; }
        
    }
}

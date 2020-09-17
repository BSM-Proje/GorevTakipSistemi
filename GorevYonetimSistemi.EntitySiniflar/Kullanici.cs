using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Kullanicilar")]
    public class Kullanici
    {
        [Key]
        public int KisiId { get; set; }
        
        public int FkOkulId { get; set; }
        [ForeignKey("FkOkulId")]
        public virtual Okul Okul { get; set; }
        public int FkBolumId { get; set; }
        [ForeignKey("FkBolumId")]
        public virtual Bolum Bolum { get; set; }
        public int FkAbdId { get; set; }
        [ForeignKey("FkAbdId")]
        public virtual AnaBilimDal AnaBilimDal { get; set; }
        public int FkUnvanId { get; set; }
        [ForeignKey("FkUnvanId")]
        public virtual Unvan Unvan { get; set; }
        public int FkIdariGorevUnvanId { get; set; }
        [ForeignKey("FkIdariGorevUnvanId")]
        public virtual IdariGorevUnvan IdariGorevUnvan { get; set; }
        public string Ad { get; set; }
        public string Soyad { get; set; }
        public string Email { get; set; }
        public string Sifre { get; set; }
        public string Fotograf { get; set; }
    }
}

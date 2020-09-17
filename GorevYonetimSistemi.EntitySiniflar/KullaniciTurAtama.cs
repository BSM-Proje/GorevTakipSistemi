using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("KullaniciTurAtama")]
    public class KullaniciTurAtama
    {
        [Key]
        public int KullaniciTurAtamaId { get; set; }
        public int FkKisiId { get; set; }
        [ForeignKey("FkKisiId")]
        public virtual Kullanici Kullanici { get; set; }
        public int FkKullaniciTurId { get; set; }
        [ForeignKey("FkKullaniciTurId")]
        public virtual KullaniciTur KullaniciTur { get; set; }
    }
}

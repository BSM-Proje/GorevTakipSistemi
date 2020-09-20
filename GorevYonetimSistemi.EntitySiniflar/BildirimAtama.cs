using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("BildirimAtama")]
    public class BildirimAtama
    {
        [Key]
        public int BildirimAtamaId { get; set; }
        
        public int FkKisiId { get; set; }
        [ForeignKey("FkKisiId")]
        public virtual Kullanici Kullanici { get; set; }
        public int FkBildirimId { get; set; }
        [ForeignKey("FkBildirimId")]
        public virtual Bildirim Bildirim { get; set; }
        public DateTime? GondermeTarih { get; set; }
        
    }
}

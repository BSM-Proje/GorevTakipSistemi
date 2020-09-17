using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Bildirimler")]
    public class Bildirim
    {
        [Key]
        public int BildirimId { get; set; }
        public int FkGorevId { get; set; }
        [ForeignKey("FkGorevId")]
        public virtual Gorev Gorev { get; set; }
        public string Icerik { get; set; }
        public string BildirimOkumaDurum { get; set; }
        public DateTime? BildirimOkumaTarih { get; set; }
        public int HatirlatmaSayisi { get; set; }

        
    }
}

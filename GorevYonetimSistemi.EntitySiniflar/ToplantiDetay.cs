using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("ToplantiDetay")]
    public class ToplantiDetay
    {
        [Key]
        public int ToplantiDetayId { get; set; }
        public int FkToplantiId { get; set; }
        [ForeignKey("FkToplantiId")]
        public virtual Toplanti Toplanti { get; set; }
        public bool ToplantiDurum { get; set; }
        public string AlinanKararlar { get; set; }
        public List<Toplanti> Toplantilar;
    }
}

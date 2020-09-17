using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("ToplantiAtama")]
    public class ToplantiAtama
    {
        [Key]
        public int ToplantiAtamaId { get; set; }

        public int FkToplantiId { get; set; }
        [ForeignKey("FkToplantiId")]
        public Toplanti Toplanti { get; set; }

        public int FkIlgiliKisiId { get; set; }
        [ForeignKey("FkIlgiliKisiId")]
        public Kullanici Kullanici { get; set; }

        public int FkAtayanKisiId { get; set; }
        


    }
}

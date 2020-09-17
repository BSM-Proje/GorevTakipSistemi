using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("AnaBilimDallar")]
    public class AnaBilimDal
    {
        [Key]
        public int AbdId { get; set; }
        public string AbdAd { get; set; }
    }
}

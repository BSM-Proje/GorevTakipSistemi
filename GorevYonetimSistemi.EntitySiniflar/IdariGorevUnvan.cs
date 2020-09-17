using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("IdariGorevUnvanlar")]
    public class IdariGorevUnvan
    {
        [Key]
        public int IdariGorevUnvanId { get; set; }
        public string IdariGorevUnvanAd { get; set; }
    }
}

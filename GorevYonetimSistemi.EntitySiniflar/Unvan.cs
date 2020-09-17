using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Unvanlar")]
    public class Unvan
    {
        [Key]
        public int UnvanId { get; set; }
        [Required]
        public string UnvanAd { get; set; }
    }
}

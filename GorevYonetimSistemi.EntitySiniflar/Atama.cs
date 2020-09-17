using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Security.AccessControl;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Atamalar")]
    public class Atama
    {
        [Key]
        public int AtamaId { get; set; }
        public int FkKisiId { get; set; }
        [ForeignKey("FkKisiId")]
        public virtual Kullanici Kullanici { get; set; }
        public int FkAtayanKisiId  { get; set; }

        public int FkGorevId { get; set; }
        [ForeignKey("FkGorevId")]
        public virtual Gorev Gorev { get; set; }

        public List<Kullanici> Kullanicilar { get; set; }
        public List<Gorev> Gorevler { get; set; }
    }
}

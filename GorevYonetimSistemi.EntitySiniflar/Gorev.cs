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
    [Table("Gorevler")]
    public class Gorev
    {
        private DateTime? _sonTarihSaat;
        [Key]
        public int GorevId { get; set; }
        public int FkToplantiId { get; set; }
        [ForeignKey("FkToplantiId")]
        public virtual Toplanti Toplanti { get; set; }
        public string GorevAdi { get; set; }
        public string GorevIcerigi { get; set; }

        public DateTime SonTarihSaat
        {
            get
            {
                return _sonTarihSaat.HasValue ? _sonTarihSaat.Value : DateTime.Now.AddDays(7);
            }
            set
            {
                _sonTarihSaat = value;
            }
        }

        public bool Durum { get; set; }

    }
}

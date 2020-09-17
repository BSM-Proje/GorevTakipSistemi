using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Toplantilar")]
    public class Toplanti
    {
        private DateTime? _sonTarihSaat;
        [Key]
        public int ToplantiId { get; set; }
        public string ToplantiAdi { get; set; }
        public string ToplantiIcerigi { get; set; }

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

        public string Yer { get; set; }
    }
}

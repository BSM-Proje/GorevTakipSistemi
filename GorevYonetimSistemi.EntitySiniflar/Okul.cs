using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    [Table("Okullar")]
    public class Okul
    {
        [Key]
        public int OkulId { get; set; }
        public string OkulAdi { get; set; }
        //public List<Bolum> Bolumler { get; set; }
    }
}

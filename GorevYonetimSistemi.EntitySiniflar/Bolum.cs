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
    [Table("Bolumler")]
    public class Bolum
    {
        [Key]
        public int BolumId { get; set; }
        public string BolumAdi { get; set; }
        public int FkOkulId { get; set; }
        //public Okul Okul { get; set; }

    }
}

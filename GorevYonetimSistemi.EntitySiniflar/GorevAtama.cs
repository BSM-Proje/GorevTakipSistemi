using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.EntitySiniflar
{
    public class GorevAtama
    {
        public int AtamaId { get; set; }
        public int GorevId { get; set; }
        public string AtananKisi { get; set; }
        public string AtayanKisi { get; set; }
        public string GorevAdi { get; set; }

    }
}

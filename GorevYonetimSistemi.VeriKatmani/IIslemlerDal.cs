using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GorevYonetimSistemi.VeriKatmani
{
    public interface IIslemlerDal<T> where T:class
    {
        List<T> Listele<T>() where T : class;
        void Ekle(T obj);
        void Guncelle(T obj);
        void Sil(int id);
    }
}

using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Migrations;
using System.Linq;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class IslemlerDal<T> : IIslemlerDal<T> where T : class
    {
        private EntityContext _context;
        private DbSet<T> _table;

        public IslemlerDal()
        {
            _context = new EntityContext();
            _table = _context.Set<T>();
        }

        public IslemlerDal(EntityContext context)
        {
            _context = context;
            _table = context.Set<T>();
        }

        public T TekListele<T>() where T : class
        {
            var list = _context.Set<T>().FirstOrDefault();
            return list;
        }

        public List<T> Listele<T>() where T : class
        {
            var list = _context.Set<T>().ToList();
            return list;
        }

        public void Ekle(T obj)
        {
            _table.Add(obj);
            _context.SaveChanges();
        }

        public void Guncelle(T obj)
        {
            _table.AddOrUpdate(obj);
            _context.SaveChanges();
        }

        public void Sil(int id)
        {
            T existing = _table.Find(id);
            _table.Remove(existing);
            _context.SaveChanges();
        }
    }
}
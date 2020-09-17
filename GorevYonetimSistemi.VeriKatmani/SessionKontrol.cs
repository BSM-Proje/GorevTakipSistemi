using System.Linq;

namespace GorevYonetimSistemi.VeriKatmani
{
    public class SessionKontrol
    {
        public string SessionKontrolu(int kullaniciTurId, string url)
        {
            using (EntityContext context = new EntityContext())
            {
                string[] urlParcasi = url.Split('/');
                var kisiTur = (from i in context.KullaniciTurleri where i.KullaniciTurId == kullaniciTurId select i.KullaniciTurAd).ToList();
                foreach (var kisiTurAd in kisiTur)
                {
                    if (urlParcasi[1] == kisiTurAd)
                    {
                        return url;
                    }
                    else
                    {
                        return "/Site/";
                    }
                }
                return null;
            }
        }
    }
}
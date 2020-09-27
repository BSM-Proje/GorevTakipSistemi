using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        IslemlerDal<Atama> _gorevAtamaDal = new IslemlerDal<Atama>();
        IslemlerDal<BildirimAtama> _bildirimAtamaDal = new IslemlerDal<BildirimAtama>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty((string)Session["AdSoyad"]))
            {
                Response.Redirect("/Site/Login.aspx");
            }

            int kisiId = Convert.ToInt32(Session["KullaniciId"]);
            if (!IsPostBack)
            {
                KisiGörevSayisi(kisiId);
                OkunmayanBildirimler(kisiId);
            }

        }

        private void OkunmayanBildirimler(int kisiId)
        {
            var okunmayanBildirimler = _bildirimAtamaDal.Listele<BildirimAtama>()
                .Where(p => p.FkKisiId == kisiId && p.BildirimOkumaDurum == false).Count();
            Session["OkunmayanBildirimSayisi"] = okunmayanBildirimler;
        }

        private void KisiGörevSayisi(int kisiId)
        {
            var gorevSayisi = _gorevAtamaDal.Listele<Atama>().Where(p=>p.FkKisiId == kisiId && p.Durum == false ).Count();
            Session["GorevSayisi"] = gorevSayisi;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.Site
{
    public partial class Page : System.Web.UI.MasterPage
    {
        MetotDal _metotDal = new MetotDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            int kisiId = Convert.ToInt32(Session["KullaniciId"]);
            if (string.IsNullOrEmpty((string)Session["AdSoyad"]))
            {
                Response.Redirect("/Site/Login.aspx");
            }

            if (!IsPostBack)
            {
                KullaniciBildirimListe(kisiId);
            }

        }

        private void KullaniciBildirimListe(int kisiId)
        {
            var bildirimListe = _metotDal.KisiBildirimListe(kisiId);
            lvBildirimler.DataSource = bildirimListe;
            lvBildirimler.DataBind();
        }

        protected void cikis_OnServerClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/Site/Login.aspx");
        }

    }
}
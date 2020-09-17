using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserBildirim : System.Web.UI.UserControl
    {
        MetotDal _metotDal = new MetotDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            int kisiId = Convert.ToInt32(Session["KullaniciId"]);
            if (!IsPostBack)
            {
                BildirimListele(kisiId);
            }
        }

        private void BildirimListele(int kisiId)
        {
            var kisiBildirimListesi = _metotDal.KisiBildirimListe(kisiId);
            lvOkunmayanBildirimler.DataSource = kisiBildirimListesi;
            lvOkunmayanBildirimler.DataBind();
        }
    }
}
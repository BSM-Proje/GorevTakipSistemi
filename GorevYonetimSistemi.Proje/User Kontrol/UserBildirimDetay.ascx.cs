using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserBildirimDetay : System.Web.UI.UserControl
    {
        MetotDal _metotDal = new MetotDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            string bildirimId = Request.QueryString["bildirimId"];
            int kisiId = Convert.ToInt32(Session["KullaniciId"]);
            if (!String.IsNullOrEmpty(bildirimId))
            {
                int id = Convert.ToInt32(bildirimId);
                BildirimDetayListele(kisiId,id);
            }
        }

        private void BildirimDetayListele(int kisiId,int id)
        {
            var bildirimDetayListe = _metotDal.BildirimDetay(kisiId, id);
            lvIcerik.DataSource = bildirimDetayListe;
            lvIcerik.DataBind();
        }
    }
}
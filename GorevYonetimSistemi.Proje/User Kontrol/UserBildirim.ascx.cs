using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserBildirim : System.Web.UI.UserControl
    {
        MetotDal _metotDal = new MetotDal();
        IslemlerDal<Bildirim> _bildirimDal = new IslemlerDal<Bildirim>();
        protected void Page_Load(object sender, EventArgs e)
        {
            int kisiId = Convert.ToInt32(Session["KullaniciId"]);
            if (!IsPostBack)
            {
                BildirimListele(kisiId);

            }


            foreach (ListViewDataItem item in lvOkunmayanBildirimler.Items)
            {
                var bildirimListe = _metotDal.KisiBildirimListe(kisiId);
                Button btn = (Button)item.FindControl("btnStar");
                Panel pnl = (Panel)item.FindControl("pnl");
                foreach (var bildirimAtamaModel in bildirimListe)
                {
                    DateTime gelecekTarih = bildirimAtamaModel.GorevSonTarihSaat;
                    DateTime bugunTarih = DateTime.UtcNow.Date;
                    int kalanGun = Convert.ToInt32((gelecekTarih.Date - bugunTarih.Date).TotalDays);


                    if (kalanGun > 30)
                    {
                        pnl.Attributes.Add("class", "icofont icofont-star text-success");
                    }

                    else if (kalanGun > 15)
                    {
                        pnl.Attributes.Add("class", "icofont icofont-star text-warning");
                    }

                    else
                    {
                        pnl.Attributes.Add("class", "icofont icofont-star text-danger");
                    }


                }







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
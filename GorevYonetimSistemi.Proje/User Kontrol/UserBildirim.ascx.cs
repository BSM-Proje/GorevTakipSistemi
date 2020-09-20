using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserBildirim : System.Web.UI.UserControl
    {
        MetotDal _metotDal = new MetotDal();
        IslemlerDal<Bildirim> _bildirimDal = new IslemlerDal<Bildirim>();
        IslemlerDal<Gorev> _gorevDal = new IslemlerDal<Gorev>();

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

            var onaylananGorevler = _metotDal.BildirimDetay(kisiId).Where(p => p.GorevOnayDurumu);
            lvOnaylananlar.DataSource = onaylananGorevler;
            lvOnaylananlar.DataBind();

            var onaylanmayanGorevler = _metotDal.BildirimDetay(kisiId).Where(p => p.GorevOnayDurumu == false);
            lvOnaylanmayanlar.DataSource = onaylanmayanGorevler;
            lvOnaylanmayanlar.DataBind();


        }

        protected void btnOnaylandi_OnServerClick(object sender, EventArgs e)
        {
            foreach (ListViewDataItem item in lvOkunmayanBildirimler.Items)
            {
                HtmlInputCheckBox cbx = (HtmlInputCheckBox)item.FindControl("cbxChecked");
                if (cbx.Checked)
                {
                    var gorev = _gorevDal.Listele<Gorev>().Find(p => p.GorevId == int.Parse(cbx.Value));
                    _gorevDal.Guncelle(new Gorev()
                    {
                        GorevId = int.Parse(cbx.Value),
                        SonTarihSaat = gorev.SonTarihSaat,
                        FkToplantiId = gorev.FkToplantiId,
                        GorevAdi = gorev.GorevAdi,
                        GorevIcerigi = gorev.GorevIcerigi,
                        Durum = true
                    });
                    BildirimListele(Convert.ToInt32(Session["KullaniciId"]));
                }

            }


        }

        protected void btnOnaylanmadi_OnServerClick(object sender, EventArgs e)
        {
            foreach (ListViewDataItem item in lvOkunmayanBildirimler.Items)
            {
                HtmlInputCheckBox cbx = (HtmlInputCheckBox)item.FindControl("cbxChecked");
                if (cbx.Checked)
                {
                    var gorev = _gorevDal.Listele<Gorev>().Find(p => p.GorevId == int.Parse(cbx.Value));
                    _gorevDal.Guncelle(new Gorev()
                    {
                        GorevId = int.Parse(cbx.Value),
                        SonTarihSaat = gorev.SonTarihSaat,
                        FkToplantiId = gorev.FkToplantiId,
                        GorevAdi = gorev.GorevAdi,
                        GorevIcerigi = gorev.GorevIcerigi,
                        Durum = false
                    });
                    BildirimListele(Convert.ToInt32(Session["KullaniciId"]));
                }

            }
        }
    }
}
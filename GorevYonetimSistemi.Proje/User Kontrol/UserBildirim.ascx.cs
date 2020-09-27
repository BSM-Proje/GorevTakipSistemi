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
        IslemlerDal<Atama> _gorevAtamaDal = new IslemlerDal<Atama>();
        IslemlerDal<BildirimAtama> _bildirimAtamaDal = new IslemlerDal<BildirimAtama>();

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

                    DateTime gelecekTarih = (DateTime)bildirimAtamaModel.GorevSonTarihSaat;
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
            var kisiBildirimListesi = _metotDal.KisiBildirimListe(kisiId).Where(p=>p.BildirimIptal==false);
            lvOkunmayanBildirimler.DataSource = kisiBildirimListesi;
            lvOkunmayanBildirimler.DataBind();

            var onaylananGorevler = _metotDal.BildirimDetay(kisiId).Where(p => p.GorevOnayDurumu && p.BildirimIptal == false);
            lvOnaylananlar.DataSource = onaylananGorevler;
            lvOnaylananlar.DataBind();

            var onaylanmayanGorevler = _metotDal.BildirimDetay(kisiId).Where(p => p.GorevOnayDurumu == false && p.BildirimIptal == false);
            lvOnaylanmayanlar.DataSource = onaylanmayanGorevler;
            lvOnaylanmayanlar.DataBind();

            var silinenBildirimler = _metotDal.BildirimDetay(kisiId).Where(p => p.BildirimIptal);
            lvSilinenBildirimler.DataSource = silinenBildirimler;
            lvSilinenBildirimler.DataBind();
        }

        protected void btnOnaylandi_OnServerClick(object sender, EventArgs e)
        {
            foreach (ListViewDataItem item in lvOkunmayanBildirimler.Items)
            {
                HtmlInputCheckBox cbx = (HtmlInputCheckBox)item.FindControl("cbxChecked");
                HtmlInputHidden cbxHidden = (HtmlInputHidden) item.FindControl("cbxHidden");
                if (cbx.Checked)
                {
                    var gorevAtama = _gorevAtamaDal.Listele<Atama>().Find(p => p.AtamaId == int.Parse(cbx.Value));
                    _gorevAtamaDal.Guncelle(new Atama()
                    {
                        AtamaId = int.Parse(cbx.Value),
                        FkGorevId = gorevAtama.FkGorevId,
                        FkKisiId = gorevAtama.FkKisiId,
                        FkAtayanKisiId = gorevAtama.FkAtayanKisiId,
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
                    var gorevAtama = _gorevAtamaDal.Listele<Atama>().Find(p => p.AtamaId == int.Parse(cbx.Value));
                    _gorevAtamaDal.Guncelle(new Atama()
                    {
                        AtamaId = int.Parse(cbx.Value),
                        FkGorevId = gorevAtama.FkGorevId,
                        FkKisiId = gorevAtama.FkKisiId,
                        FkAtayanKisiId = gorevAtama.FkAtayanKisiId,
                        Durum = false
                    });
                    BildirimListele(Convert.ToInt32(Session["KullaniciId"]));
                }
            }
        }

        protected void btnSil_OnServerClick(object sender, EventArgs e)
        {
            foreach (ListViewDataItem item in lvOkunmayanBildirimler.Items)
            {
                HtmlInputCheckBox cbx = (HtmlInputCheckBox)item.FindControl("cbxChecked");
                HtmlInputHidden cbxHidden = (HtmlInputHidden)item.FindControl("cbxHidden");
                if (cbx.Checked)
                {
                    var bilidirimAtama = _bildirimAtamaDal.Listele<BildirimAtama>().Find(p => p.BildirimAtamaId == int.Parse(cbxHidden.Value));
                    _bildirimAtamaDal.Guncelle(new BildirimAtama()
                    {
                        BildirimAtamaId = int.Parse(cbxHidden.Value),
                        BildirimOkumaDurum = bilidirimAtama.BildirimOkumaDurum,
                        BildirimOkumaTarih = bilidirimAtama.BildirimOkumaTarih,
                        FkBildirimId = bilidirimAtama.FkBildirimId,
                        FkKisiId = bilidirimAtama.FkKisiId,
                        GondermeTarih = bilidirimAtama.GondermeTarih,
                        HatirlatmaSayisi = bilidirimAtama.HatirlatmaSayisi,
                        Iptal = true
                    });
                    BildirimListele(Convert.ToInt32(Session["KullaniciId"]));
                }

            }
        }
    }
}
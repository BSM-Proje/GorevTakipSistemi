﻿using System;
using System.Web;
using System.Web.UI;
using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.Admin
{
    public partial class IdariGorevUnvanlar : Page
    {
        IslemlerDal<IdariGorevUnvan> _idariGorevUnvanDal = new IslemlerDal<IdariGorevUnvan>();
        SessionKontrol _sessionKontrol = new SessionKontrol();
        private string mesaj;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IdariGorevUnvanListele();
                int kullaniciTurId = Convert.ToInt32(Session["KullaniciTurId"]);
                string url = HttpContext.Current.Request.Url.AbsolutePath;
                var kontrolUrl = _sessionKontrol.SessionKontrolu(kullaniciTurId, url);
                if (kontrolUrl != url)
                {
                    Response.Redirect(kontrolUrl);
                }
            }
        }

        private void IdariGorevUnvanListele()
        {
            var idariGorevUnvanListe = _idariGorevUnvanDal.Listele<IdariGorevUnvan>();
            lvidariGorevUnvanlar.DataSource = idariGorevUnvanListe;
            lvidariGorevUnvanlar.DataBind();
        }

        protected void btnKaydet_OnServerClick(object sender, EventArgs e)
        {
            _idariGorevUnvanDal.Ekle(new IdariGorevUnvan()
            {
                IdariGorevUnvanAd = idariGorevUnvanAd.Value
            });


            IdariGorevUnvanListele();
            mesaj = "Idari Görev Unvan Eklendi!";
            Sonuc(mesaj);
        }

        protected void btnSil_OnServerClick(object sender, EventArgs e)
        {
            _idariGorevUnvanDal.Sil(int.Parse(idariGorevUnvanId.Value));

            IdariGorevUnvanListele();
            mesaj= "Idari Görev Unvan Silindi!";
            Sonuc(mesaj);
        }

        protected void btnGuncelle_OnServerClick(object sender, EventArgs e)
        {
            _idariGorevUnvanDal.Guncelle(new IdariGorevUnvan()
            {
                IdariGorevUnvanId = int.Parse(idariGorevUnvanId.Value),
                IdariGorevUnvanAd = idariGorevUnvanAd.Value
            });

            IdariGorevUnvanListele();
            mesaj= "Idari Görev Unvan Güncellendi!";
            Sonuc(mesaj);
        }

        private void Sonuc(string mesaj)
        {
            lblSonuc.Visible = true;
            lblSonuc.InnerText = mesaj;
        }
    }
}
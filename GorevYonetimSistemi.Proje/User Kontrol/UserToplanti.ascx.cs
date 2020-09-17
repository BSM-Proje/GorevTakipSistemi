using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;
using System;
using System.Web.UI.WebControls;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserToplanti : System.Web.UI.UserControl
    {
        private IslemlerDal<Toplanti> _toplantiDal = new IslemlerDal<Toplanti>();
        private IslemlerDal<ToplantiDetay> _toplantiDetayDal = new IslemlerDal<ToplantiDetay>();
        IslemlerDal<ToplantiAtama> _toplantiAtamaDal = new IslemlerDal<ToplantiAtama>();
        IslemlerDal<Kullanici> _kullaniciDal = new IslemlerDal<Kullanici>();
        private MetotDal _metotDal = new MetotDal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ToplantiListe();
                ToplantiDetayListe();
                ToplantiAtamaListe();
                KisileriListele();
            }


        }

        private void KisileriListele()
        {
            var kisiListe = _kullaniciDal.Listele<Kullanici>();
            selectKisiler.DataSource = kisiListe;
            selectKisiler.DataTextField = "Ad";
            selectKisiler.DataValueField = "KisiId";
            selectKisiler.DataBind();

            

        }

        private void ToplantiAtamaListe()
        {
            var toplantiAtamaListe = _metotDal.ToplantiAtama();
            lvToplantiAtama.DataSource = toplantiAtamaListe;
            lvToplantiAtama.DataBind();
        }

        private void ToplantiDetayListe()
        {
            var toplantiDetayListele = _metotDal.ToplantiDetay();
            lvToplantiDetay.DataSource = toplantiDetayListele;
            lvToplantiDetay.DataBind();
        }

        private void ToplantiListe()
        {
            var toplantiListele = _toplantiDal.Listele<Toplanti>();
            lvToplanti.DataSource = toplantiListele;
            lvToplanti.DataBind();

            if (selectToplantiDetayTa.Items.Count == 0)
            {
                selectToplantiDetayTa.DataSource = toplantiListele;
                selectToplantiDetayTa.DataTextField = "ToplantiAdi";
                selectToplantiDetayTa.DataValueField = "ToplantiId";
                selectToplantiDetayTa.DataBind();
            }
            if (selectToplantiAtamaTa.Items.Count == 0)
            {
                selectToplantiAtamaTa.DataSource = toplantiListele;
                selectToplantiAtamaTa.DataTextField = "ToplantiAdi";
                selectToplantiAtamaTa.DataValueField = "ToplantiId";
                selectToplantiAtamaTa.DataBind();
            }

        }

        protected void btnKaydet_OnServerClick(object sender, EventArgs e)
        {
            lblSonuc.Visible = true;
            _toplantiDal.Ekle(new Toplanti
            {
                ToplantiAdi = tbxToplantiAdi.Value,
                ToplantiIcerigi = taToplantiIcerigi.Value,
                Yer = tbxToplantiYeri.Value
            });
            ToplantiListe();
            lblSonuc.InnerText = "Kayıt başarılı!";
        }

        protected void btnDetayKaydet_OnServerClick(object sender, EventArgs e)
        {
            _toplantiDetayDal.Ekle(new ToplantiDetay()
            {
                FkToplantiId = int.Parse(selectToplantiDetayTa.Value),
                AlinanKararlar = toplantiSonAlKarar.Value,
                ToplantiDurum = true,
            });

            ToplantiDetayListe();
        }

        protected void btnDetaySil_OnServerClick(object sender, EventArgs e)
        {
            _toplantiDetayDal.Sil(int.Parse(toplantiDetayId.Value));
            ToplantiDetayListe();
        }

        protected void btnSil_OnServerClick(object sender, EventArgs e)
        {
            lblSonuc.Visible = true;
            _toplantiDal.Sil(int.Parse(toplantiId.Value));
            ToplantiListe();

            lblSonuc.InnerText = "Kayıt Silindi!";
        }

        protected void btnGuncelle_OnServerClick(object sender, EventArgs e)
        {
            lblSonuc.Visible = true;
            _toplantiDal.Guncelle(new Toplanti()
            {
                ToplantiId = int.Parse(toplantiId.Value),
                ToplantiAdi = tbxToplantiAdi.Value,
                ToplantiIcerigi = taToplantiIcerigi.Value,
                Yer = tbxToplantiYeri.Value
            });

            lblSonuc.InnerText = "Kayıt Güncellendi!";
            ToplantiListe();
        }

        protected void btnDetayGuncelle_OnServerClick(object sender, EventArgs e)
        {
            _toplantiDetayDal.Guncelle(new ToplantiDetay()
            {
                ToplantiDetayId = int.Parse(toplantiDetayId.Value),
                AlinanKararlar = toplantiSonAlKarar.Value,
                FkToplantiId = int.Parse(toplantiId.Value),
                ToplantiDurum = true
            });

            ToplantiDetayListe();
        }

        protected void btnAtamaKaydet_OnServerClick(object sender, EventArgs e)
        {
            var atayanKisiId = Session["KullaniciId"];

            for (int i = 0; i < tbxIlgiliKisiler.Value.Split(',').Length; i++)
            {
                _toplantiAtamaDal.Ekle(new ToplantiAtama
                {
                    FkIlgiliKisiId = Convert.ToInt32(tbxIlgiliKisiler.Value.Split(',')[i]),
                    FkToplantiId = Convert.ToInt32(selectToplantiAtamaTa.Value),
                    FkAtayanKisiId = int.Parse(atayanKisiId.ToString())
                });
            }


            lblSonuc.Visible = true;
            lblSonuc.InnerText = tbxIlgiliKisiler.Value;

            ToplantiAtamaListe();

        }
    }
}

using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;
using System;
using System.Linq;
using System.Net.Mail;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserToplanti : System.Web.UI.UserControl
    {
        private IslemlerDal<Toplanti> _toplantiDal = new IslemlerDal<Toplanti>();
        private IslemlerDal<ToplantiDetay> _toplantiDetayDal = new IslemlerDal<ToplantiDetay>();
        IslemlerDal<ToplantiAtama> _toplantiAtamaDal = new IslemlerDal<ToplantiAtama>();
        IslemlerDal<Kullanici> _kullaniciDal = new IslemlerDal<Kullanici>();
        private MetotDal _metotDal = new MetotDal();

        string mesaj;

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
            var liste = _metotDal.ToplantıAtamaGrup();
            lvToplantiAtama.DataSource = liste;
            lvToplantiAtama.DataBind();
        }

        private void ToplantiDetayListe()
        {
            var toplantiDetayListele = _metotDal.ToplantiDetay(null);
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

        private void Sonuc(string mesaj, int tab)
        {
            if (tab == 1)
            {
                lblSonuc.Visible = true;
                lblSonuc.InnerText = mesaj;
            }
            else if (tab == 2)
            {
                lblSonuc.Visible = true;
                lblSonuc.InnerText = mesaj;
            }
            else if (tab == 3)
            {
                lblSonuc.Visible = true;
                lblSonuc.InnerText = mesaj;
            }

        }
        protected void btnKaydet_OnServerClick(object sender, EventArgs e)
        {

            _toplantiDal.Ekle(new Toplanti
            {
                ToplantiAdi = tbxToplantiAdi.Value,
                ToplantiIcerigi = taToplantiIcerigi.Value,
                Yer = tbxToplantiYeri.Value
            });
            mesaj = "Toplantı kaydedildi";
            Sonuc(mesaj, 1);
            ToplantiListe();

        }

        protected void btnDetayKaydet_OnServerClick(object sender, EventArgs e)
        {
            _toplantiDetayDal.Ekle(new ToplantiDetay()
            {
                FkToplantiId = int.Parse(selectToplantiDetayTa.Value),
                AlinanKararlar = toplantiSonAlKarar.Value,
                ToplantiDurum = true,
            });

            mesaj = "Toplantı detay kaydedildi";
            Sonuc(mesaj, 2);
            ToplantiDetayListe();
        }

        protected void btnDetaySil_OnServerClick(object sender, EventArgs e)
        {
            _toplantiDetayDal.Sil(int.Parse(toplantiDetayId.Value));
            mesaj = "Toplantı detay silindi";
            Sonuc(mesaj, 2);
            ToplantiDetayListe();
        }

        protected void btnSil_OnServerClick(object sender, EventArgs e)
        {

            _toplantiDal.Sil(int.Parse(toplantiId.Value));
            mesaj = "Toplantı silindi";
            Sonuc(mesaj, 1);
            ToplantiListe();


        }

        protected void btnGuncelle_OnServerClick(object sender, EventArgs e)
        {

            _toplantiDal.Guncelle(new Toplanti()
            {
                ToplantiId = int.Parse(toplantiId.Value),
                ToplantiAdi = tbxToplantiAdi.Value,
                ToplantiIcerigi = taToplantiIcerigi.Value,
                Yer = tbxToplantiYeri.Value
            });

            mesaj = "Toplantı güncellendi";
            Sonuc(mesaj, 1);
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

            mesaj = "Toplantı detay güncellendi";
            Sonuc(mesaj, 2);
            ToplantiDetayListe();
        }

        protected void btnAtamaKaydet_OnServerClick(object sender, EventArgs e)
        {
            var atayanKisiId = Session["KullaniciId"];

            for (int i = 0; i < tbxIlgiliKisiler.Value.Split(',').Length; i++)
            {
                int fkIlgiliKisiId = Convert.ToInt32(tbxIlgiliKisiler.Value.Split(',')[i]);
                _toplantiAtamaDal.Ekle(new ToplantiAtama
                {
                    FkIlgiliKisiId = fkIlgiliKisiId,
                    FkToplantiId = Convert.ToInt32(selectToplantiAtamaTa.Value),
                    FkAtayanKisiId = int.Parse(atayanKisiId.ToString())
                });
                var kisi = _kullaniciDal.Listele<Kullanici>().Find(p => p.KisiId == fkIlgiliKisiId);
                var toplanti = _toplantiDal.Listele<Toplanti>().Find(t => t.ToplantiId == int.Parse(selectToplantiAtamaTa.Value));
                MailGonder(kisi.Email, toplanti.ToplantiAdi, toplanti.SonTarihSaat, toplanti.Yer);

            }

            mesaj = "Toplantı atama kaydedildi";
            Sonuc(mesaj, 3);

            ToplantiAtamaListe();



        }

        private void MailGonder(string email, string toplantiAdi, DateTime toplantiTarihi, string toplantiYeri)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("mskuproje@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Toplantı Ataması";
                mail.Body = String.Format("{0} adlı toplantınız {1:d} tarihinde ve {1:t} saatinde {2}'de yapılacaktır.", toplantiAdi, toplantiTarihi, toplantiYeri);
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("mskuproje@gmail.com", "Msku2020.");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }
    }
}

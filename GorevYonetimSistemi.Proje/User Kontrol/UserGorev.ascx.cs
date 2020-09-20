using GorevYonetimSistemi.EntitySiniflar;
using GorevYonetimSistemi.VeriKatmani;
using System;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserGorev : System.Web.UI.UserControl
    {
        private IslemlerDal<Gorev> _gorevDal = new IslemlerDal<Gorev>();
        private MetotDal _metotDal = new MetotDal();
        IslemlerDal<Atama> _gorevAtamaDal=new IslemlerDal<Atama>();
        IslemlerDal<Kullanici> _kullaniciDal=new IslemlerDal<Kullanici>();
        IslemlerDal<Bildirim> _bildirimDal = new IslemlerDal<Bildirim>();
        IslemlerDal<BildirimAtama> _bildirimAtamaDal = new IslemlerDal<BildirimAtama>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GorevListele();
                GorevAtamaListele();
                KisileriListele();
            }
        }

        private void KisileriListele()
        {
            var kisileriListe = _kullaniciDal.Listele<Kullanici>();
            selectKisiler.DataSource = kisileriListe;
            selectKisiler.DataTextField = "Ad";
            selectKisiler.DataValueField = "KisiId";
            selectKisiler.DataBind();
        }


        private void GorevAtamaListele()
        {
            var gorevAtamaListe = _metotDal.GorevAtama();
            lvGorevAtama.DataSource = gorevAtamaListe;
            lvGorevAtama.DataBind();
        }

        private void GorevListele()
        {
            var gorevListe = _gorevDal.Listele<Gorev>();
            dlGorev.DataSource = gorevListe;
            dlGorev.DataBind();

            selectGorevAtama.DataSource = gorevListe;
            selectGorevAtama.DataTextField = "GorevAdi";
            selectGorevAtama.DataValueField = "GorevId";
            selectGorevAtama.DataBind();

        }

        protected void OnServerClick(object sender, EventArgs e)
        {
        }

        protected void btnGorevAtamaKaydet_OnServerClick(object sender, EventArgs e)
        {
            
            var atayanKisiId = Session["KullaniciId"];

            for (int i = 0; i < tbxIlgiliKisiler.Value.Split(',').Length; i++)
            {
                _gorevAtamaDal.Ekle(new Atama
                {
                   
                    FkKisiId = Convert.ToInt32(tbxIlgiliKisiler.Value.Split(',')[i]),
                    FkGorevId = Convert.ToInt32(selectGorevAtama.Value),
                    FkAtayanKisiId = int.Parse(atayanKisiId.ToString())
                });

                _bildirimDal.Ekle(new Bildirim()
                {
                    Icerik = selectGorevAtama.Items[selectGorevAtama.SelectedIndex].Text,
                    FkGorevId = Convert.ToInt32(selectGorevAtama.Value),
                    
                    
                });


                _bildirimAtamaDal.Ekle(new BildirimAtama()
                {

                });




            }


            GorevAtamaListele();
        }
    }
}
using System;
using System.Web;
using GorevYonetimSistemi.VeriKatmani;
using System.Net;
using System.Net.Mail;

namespace GorevYonetimSistemi.Proje.Admin
{
    public partial class AdminGorev : System.Web.UI.Page
    {
        SessionKontrol _sessionKontrol = new SessionKontrol();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int kullaniciTurId = Convert.ToInt32(Session["KullaniciTurId"]);
                string url = HttpContext.Current.Request.Url.AbsolutePath;
                var kontrolUrl = _sessionKontrol.SessionKontrolu(kullaniciTurId, url);
                if (kontrolUrl != url)
                {
                    Response.Redirect(kontrolUrl);
                }

            }
        }

    }
}
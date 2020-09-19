using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GorevYonetimSistemi.Proje.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_OnServerClick(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("mskuproje@gmail.com");
                mail.To.Add("hikdogru@gmail.com");
                mail.Subject = "Test Mail";
                mail.Body = "This is for testing SMTP mail from GMAIL";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("mskuproje@gmail.com", "Msku2020.");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                lblDeneme.Text = "mail Send";
            }
            catch (Exception ex)
            {
                lblDeneme.Text = ex.ToString();
            }
        }
    }
}
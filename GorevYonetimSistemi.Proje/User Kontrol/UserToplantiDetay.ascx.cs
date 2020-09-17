using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GorevYonetimSistemi.VeriKatmani;

namespace GorevYonetimSistemi.Proje.User_Kontrol
{
    public partial class UserToplantiDetay : System.Web.UI.UserControl
    {
        MetotDal _metotDal = new MetotDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            string toplantiId = Request.QueryString["toplantiId"];
            if (!IsPostBack)
            {
                int tId = Convert.ToInt32(toplantiId);
                ToplantiDetayListele(tId);
            }
        }

        private void ToplantiDetayListele(int toplantiId)
        {
            var toplantiDetay = _metotDal.ToplantiDetay(toplantiId);
            lvIcerik.DataSource = toplantiDetay;
            lvIcerik.DataBind();
        }
    }
}
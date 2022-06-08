using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace mercedes
{
    public partial class siparis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ads.SelectCommand = "select urunler.Kimlik as urunKimlik, resimyolu,eskifiyat,yenifiyat,markamodel,adsoyad from urunler,uyeler,SiparisFavoriSepet where uyeler.Kimlik="
                + Session["kullaniciId"]
                + " and SiparisFavoriSepet.durum='"
                + Request.QueryString["durum"]
                + "' and SiparisFavoriSepet.UrunId=urunler.Kimlik and SiparisFavoriSepet.kullaniciId=uyeler.Kimlik ";
            if (Request.QueryString["durum"].Equals("favori"))
            {
                lblBaslik.Text = Session["kullanici"] + "'in Favorideki Ürünleri";
            }
            else
            {
                lblBaslik.Text = Session["kullanici"] + "'in Sepetteki Ürünleri";
            }
        }

      
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace mercedes
{
    public partial class urunsil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;DATA Source=" + Server.MapPath("db.accdb"));
            baglanti.Open();

            OleDbCommand komut = new OleDbCommand();
            komut.CommandText = "delete from SiparisFavoriSepet where UrunId="
                +Request.QueryString["kimlikno"]+" and kullaniciId="
                +Session["kullaniciId"]+" and durum='"+Request.QueryString["durum"]+"'";
            komut.Connection = baglanti;
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("siparis.aspx?durum="+Request.QueryString["durum"]);
        }
    }
}
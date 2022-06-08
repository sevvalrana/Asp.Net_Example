using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace mercedes
{
    public partial class uyeol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKayit_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;DATA Source=" + Server.MapPath("db.accdb"));
            baglanti.Open();

            OleDbCommand komut = new OleDbCommand();
            komut.CommandText = "insert into uyeler(kullaniciadi, parola, adsoyad, cinsiyet,dogumyili, yasadigiil, telefon) values('"+
                txtKullanici.Text+"','"+
                txtParola.Text+"','"+
                txtAdSoyad.Text+"','"+
                rblCinsiyet.SelectedValue+"',"+
                txtDogumYili.Text+",'"+
                ddlYasadigiIL.Text +"','"+
                txtTelefon.Text+"')";

            komut.Connection = baglanti;
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("index.aspx");
        }
    }
}
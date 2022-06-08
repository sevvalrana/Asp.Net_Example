using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace mercedes
{
    public partial class urundetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;DATA Source=" 
                + Server.MapPath("db.accdb"));
            baglanti.Open();

            OleDbCommand komut = new OleDbCommand();
            komut.CommandText = "select * from urunler where Kimlik="
                + Request.QueryString["kimlikno"];
            komut.Connection = baglanti;

            OleDbDataReader kayitlar;
            kayitlar = komut.ExecuteReader();
            kayitlar.Read();

            lblKimlikNoDeger.Text = kayitlar["Kimlik"].ToString();
            lblModelDeger.Text = kayitlar["markamodel"].ToString();
            lblEskiFiyatDeger.Text=kayitlar["eskifiyat"].ToString();
            lblYeniFiyatDeger.Text= kayitlar["yenifiyat"].ToString();
            lblVitesDeger.Text = kayitlar["vites"].ToString();
            lblYakitDeger.Text = kayitlar["yakit"].ToString();
            lblMotorGucuDeger.Text = kayitlar["motorgucu"].ToString();
            lblRenkDeger.Text= kayitlar["renk"].ToString();
            lblKasaDeger.Text= kayitlar["kasa"].ToString();
            lblHasarDeger.Text= kayitlar["hasarkayit"].ToString();
            lblKmDeger.Text= kayitlar["kilometre"].ToString();
            lblDurumDeger.Text= kayitlar["durum"].ToString();
            lblModelYilideger.Text= kayitlar["modelyili"].ToString();

            urunDetayFoto.Src= kayitlar["resimyolu"].ToString();
            lblBaslik.Text= lblModelDeger.Text = kayitlar["markamodel"].ToString();

            kayitlar.Close();
            OleDbCommand komut2 = new OleDbCommand();
            komut2.CommandText = "select durum from SiparisFavoriSepet where UrunId="
                + Request.QueryString["kimlikno"]+" and kullaniciId=" 
                + Session["kullaniciId"];
            komut2.Connection = baglanti;

            OleDbDataReader kayitlarDurum;
            kayitlarDurum = komut2.ExecuteReader();
            while (kayitlarDurum.Read()==true){
                if (kayitlarDurum["durum"].Equals("favori")){
                    btnFavoriEkle.Enabled = false;
                }
                else {
                    btnSepetEkle.Enabled = false;
                }
            }
            kayitlarDurum.Close();
            baglanti.Close();


        }

        protected void btnFavoriEkle_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = 
                new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;DATA Source="
                 + Server.MapPath("db.accdb"));
            baglanti.Open();

            OleDbCommand komut = new OleDbCommand();
            komut.Connection = baglanti;
            komut.CommandText = 
                "insert into siparisFavoriSepet(kullaniciId,urunId,durum,tarih) values(" 
                + Session["kullaniciId"]+ ","
                +lblKimlikNoDeger.Text
                + ",'favori','"+DateTime.Now+"')";
            komut.ExecuteNonQuery();
            baglanti.Close();
            btnFavoriEkle.Text = "Favoriye Eklendi";
            btnFavoriEkle.Enabled = false;         
        }

        protected void btnSepetEkle_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;DATA Source="
                + Server.MapPath("db.accdb"));
            baglanti.Open();

            OleDbCommand komut = new OleDbCommand();
            komut.Connection = baglanti;
            komut.CommandText = 
                "insert into siparisFavoriSepet(kullaniciId,urunId,durum,tarih) values("
                + Session["kullaniciId"] + ","
                + lblKimlikNoDeger.Text
                + ",'sepet','" + DateTime.Now + "')";
            komut.ExecuteNonQuery();
            baglanti.Close();
            btnSepetEkle.Text = "Sepete Eklendi";
            btnSepetEkle.Enabled = false;
        }
    }
}
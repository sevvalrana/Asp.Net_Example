﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
namespace mercedes
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTemizle_Click(object sender, EventArgs e)
        {
            txtKullanici.Text = "";
            txtParola.Text = "";
            lblHataMesaj.Text = "";
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;DATA Source=" + Server.MapPath("db.accdb"));
            baglanti.Open();

            OleDbCommand komut=new OleDbCommand();
            komut.CommandText ="select * from uyeler where kullaniciadi='"+txtKullanici.Text+"' and parola='"+txtParola.Text+"'";
            komut.Connection = baglanti;

            OleDbDataReader kayitlar;
            kayitlar = komut.ExecuteReader();
            if (kayitlar.Read() == true)
            {
                Session["kullanici"] = kayitlar["adsoyad"].ToString();
                Session["kullaniciId"] = kayitlar["Kimlik"].ToString();
                Response.Redirect("default.aspx");
            }
            else
            {
                lblHataMesaj.Text = "Kullanıcı adı ya da parola hatalı!";
            }
            kayitlar.Close();
            baglanti.Close();

        }
    }
}
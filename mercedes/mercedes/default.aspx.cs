using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mercedes
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack==false) { 
                if (Session["kullanici"] == null)
                {
                    Response.Redirect("index.aspx");
                }
            }
            ads.SelectCommand = "select * from urunler";
        }
    }
}
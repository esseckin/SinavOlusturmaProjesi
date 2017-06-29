using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KonusarakOgrenProje
{
    public partial class GirişEkranı : System.Web.UI.Page
    {
         SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-EOKQ1OG\SQLEXPRESS;Initial Catalog=KonusarakOgrenProjeDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnGiris_Click(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("select * from Uyeler where KullanıcıAdı='"+txtAd.Text+"' and Parola='"+txtSifre.Text+"'", con);
            if (con.State==ConnectionState.Closed)
            {
                con.Open();
            }
                SqlDataReader rd = com.ExecuteReader();
            if (rd.Read())
            {
                Session.Add("kullanici", txtAd.Text);
                Response.Redirect("SınavOlusturmaEkranı.aspx");
            }
            else {
                lblBilgi.Text = "Giriş Başarısız";
                txtAd.Text = "";
                txtSifre.Text = "";
            }
            con.Close();
            con.Dispose();
        }
    }
}
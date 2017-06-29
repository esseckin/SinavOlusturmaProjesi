using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KonusarakOgrenProje
{
    public partial class SınavListeEkranı : System.Web.UI.Page
    {
        public static int sınavId;
        public static string baslik;
        public static string tarih;

        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (Session["kullanici"] != null)
            //{
                int selectedRowIndex;
                selectedRowIndex = GridView1.SelectedIndex;
                GridViewRow row = GridView1.Rows[selectedRowIndex];
                sınavId = Convert.ToInt32(row.Cells[1].Text);
                baslik = row.Cells[2].Text;
                tarih = row.Cells[3].Text;

                Response.Write("Secilen satır:  SınavID: " + sınavId + "    Baslik:" + baslik + "   Tarih:" + tarih);

                Response.Redirect("SinavEkrani.aspx");
            //}
            //else
            //{
            //    Response.Redirect("GirişEkranı.aspx");
            //}
        }
    }
}
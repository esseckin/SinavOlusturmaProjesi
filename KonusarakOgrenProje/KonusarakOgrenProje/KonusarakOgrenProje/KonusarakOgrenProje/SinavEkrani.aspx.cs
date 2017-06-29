using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Web.Services;
using Newtonsoft.Json;

namespace KonusarakOgrenProje
{
    public partial class SinavEkrani : System.Web.UI.Page
    {
        Button btn;
        string dogrucvp1;
        string dogrucvp2;
        string dogrucvp3;
        string dogrucvp4;
        string btn1Aid, btn1Bid, btn1Cid, btn1Did;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["kullanici"] != null)
            //{
                KonusarakOgrenProjeDBEntities5 db = new KonusarakOgrenProjeDBEntities5();
                Sınavlar sınav = new Sınavlar();
                txtmetinn.Text = SınavListeEkranı.baslik;

                var sorular = (from s in db.Sorularr
                               where s.sınavId == SınavListeEkranı.sınavId
                               select s).ToList();
                int sayac = 0;
                foreach (var item in sorular)
                {
                    if (sayac == 0)
                    {
                        txtsoru11.Text = item.soru1;
                        Btn1A.Value = item.cvpA;
                        Btn1B.Value = item.cvpB;
                        Btn1C.Value = item.cvpC;
                        Btn1D.Value = item.cvpD;
                        dogrucvp1 = item.DogruCvp;
                        sayac++;
                    }
                    else if (sayac == 1)
                    {
                        txtsoru22.Text = item.soru2;
                        Btn2A.Value = item.cvpA;
                        Btn2B.Value = item.cvpB;
                        Btn2C.Value = item.cvpC;
                        Btn2D.Value = item.cvpD;
                        dogrucvp2 = item.DogruCvp;
                        sayac++;
                    }
                    else if (sayac == 2)
                    {
                        txtsoru33.Text = item.soru3;
                        Btn3A.Value = item.cvpA;
                        Btn3B.Value = item.cvpB;
                        Btn3C.Value = item.cvpC;
                        Btn3D.Value = item.cvpD;
                        dogrucvp3 = item.DogruCvp;
                        sayac++;
                    }
                    else if (sayac == 3)
                    {
                        txtsoru44.Text = item.soru4;
                        Btn4A.Value = item.cvpA;
                        Btn4B.Value = item.cvpB;
                        Btn4C.Value = item.cvpC;
                        Btn4D.Value = item.cvpD;
                        dogrucvp4 = item.DogruCvp;
                        sayac++;
                    }
                }

                Session.Add("Cevap1", dogrucvp1);
                Session.Add("Cevap2", dogrucvp2);
                Session.Add("Cevap3", dogrucvp3);
                Session.Add("Cevap4", dogrucvp4);
            //}
            //else
            //{
            //    Response.Redirect("GirişEkranı.aspx");
            //}
        }

    }
}
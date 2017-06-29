using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using HtmlAgilityPack;
using System.Data.SqlClient;
using System.Data;
namespace KonusarakOgrenProje
{
    public partial class deneme1 : System.Web.UI.Page
    {
        string baslik1;
        string baslik2;
        string baslik3;
        string baslik4;
        string baslik5;
        Sorularr soru;
        protected void Page_Load(object sender, EventArgs e)
        {
            // if (Session["kullanici"] != null)
            //{
            Response.Write("Hosgeldin " + Session["kullanici"] + "<br><br>" + "Sınav olusturmak istediğin başlıga tıkla");
            if (!IsPostBack)
            {
                Panel1.Visible = false;
                lstbx1.Visible = false;
                Uri url = new Uri("https://www.wired.com/most-popular");
                WebClient client = new WebClient();
                client.Encoding = System.Text.Encoding.UTF8;
                string html = client.DownloadString(url);
                HtmlAgilityPack.HtmlDocument dokuman = new HtmlAgilityPack.HtmlDocument();
                dokuman.LoadHtml(html);
                HtmlNodeCollection basliklar = dokuman.DocumentNode.SelectNodes("//h2[@class='title brandon clamp-5']");
                HtmlNodeCollection metinler = dokuman.DocumentNode.SelectNodes("//p[@class='exchange-sm marg-t-micro clamp-3']");
                int sayac = 0;
                foreach (var metin in metinler)
                {
                    if (sayac < 5)
                    {
                        lstbx1.Items.Add(metin.InnerText);
                    }
                    else
                    {
                        break;
                    }
                    sayac++;
                }
                sayac = 0;
                foreach (var baslik in basliklar)
                {
                    if (sayac < 5)
                    {
                        DropDownList1.Items.Add(baslik.InnerText);
                        DropDownList1.Items[sayac].Value = sayac.ToString();
                        if (sayac == 0)
                        {
                            baslik1 = baslik.InnerText;
                        }
                        else if (sayac == 1)
                        {
                            baslik2 = baslik.InnerText;
                        }
                        else if (sayac == 2)
                        {
                            baslik3 = baslik.InnerText;
                        }
                        else if (sayac == 3)
                        {
                            baslik4 = baslik.InnerText;
                        }
                        else if (sayac == 4)
                        {
                            baslik5 = baslik.InnerText;
                        }
                    }

                    else
                    {
                        break;
                    }
                    sayac++;
                }
                //}
                //else
                //{
                //  Response.Redirect("GirişEkranı.aspx");
                //}
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            for (int i = 0; i < 5; i++)
            {
                if (DropDownList1.SelectedValue == i.ToString())
                {
                    Panel1.Visible = true;
                    txtmetin.Text = lstbx1.Items[i].Value;
                    int secilensınavId = i;
                }
            }
        }

        protected void btnSnvOlustur_Click(object sender, EventArgs e)
        {
            KonusarakOgrenProjeDBEntities5 ent = new KonusarakOgrenProjeDBEntities5();
            Sınavlar sınav = new Sınavlar();
            sınav.tarih = Convert.ToDateTime(DateTime.Now);
            if (DropDownList1.SelectedIndex == 0)
            {
                baslik1 = DropDownList1.SelectedItem.Text;
                sınav.baslik = baslik1;

            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                baslik2 = DropDownList1.SelectedItem.Text; ;
                sınav.baslik = baslik2;

            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                baslik3 = DropDownList1.SelectedItem.Text;
                sınav.baslik = baslik3;

            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                baslik4 = DropDownList1.SelectedItem.Text;
                sınav.baslik = baslik4;
            }
            else if (DropDownList1.SelectedIndex == 4)
            {
                baslik5 = DropDownList1.SelectedItem.Text;
                sınav.baslik = baslik5;

            }

            for (int i = 0; i < 4; i++)
            {
                soru = new Sorularr();
                soru.sınavId = Convert.ToInt32(DropDownList1.SelectedValue) + 1;
                sınav.sınavId = Convert.ToInt32(soru.sınavId);
                ent.Sınavlar.Add(sınav);
                if (i == 0)
                {
                    soru.soru1 = txtsoru1.Text;
                    soru.cvpA = txt1cevapA.Text;
                    soru.cvpB = txt1cevapB.Text;
                    soru.cvpC = txt1cevapC.Text;
                    soru.cvpD = txt1cevapD.Text;
                    if (DropDownList2.SelectedValue.ToString().Equals("Seciniz:"))
                    {
                        soru.DogruCvp = null;
                    }
                    else
                    {
                        switch (DropDownList2.SelectedValue.ToString())
                        {
                            case "A":
                                soru.DogruCvp = txt1cevapA.Text;
                                break;
                            case "B":
                                soru.DogruCvp = txt1cevapB.Text;
                                break;
                            case "C":
                                soru.DogruCvp = txt1cevapC.Text;
                                break;
                            case "D":
                                soru.DogruCvp = txt1cevapD.Text;
                                break;
                        }
                    }
                    ent.Sorularr.Add(soru);

                }
                else if (i == 1)
                {
                    soru.soru2 = txtsoru2.Text;
                    soru.cvpA = txt2cevapA.Text;
                    soru.cvpB = txt2cevapB.Text;
                    soru.cvpC = txt2cevapC.Text;
                    soru.cvpD = txt2cevapD.Text;
                    if (DropDownList3.SelectedValue.ToString().Equals("Seciniz:"))
                    {
                        soru.DogruCvp = null;
                    }
                    else
                    {
                        switch (DropDownList3.SelectedValue.ToString())
                        {
                            case "A":
                                soru.DogruCvp = txt2cevapA.Text;
                                break;
                            case "B":
                                soru.DogruCvp = txt2cevapB.Text;
                                break;
                            case "C":
                                soru.DogruCvp = txt2cevapC.Text;
                                break;
                            case "D":
                                soru.DogruCvp = txt2cevapD.Text;
                                break;
                        }
                    }
                    ent.Sorularr.Add(soru);
                }
                else if (i == 2)
                {
                    soru.soru3 = txtsoru3.Text;
                    soru.cvpA = txt3cevapA.Text;
                    soru.cvpB = txt3cevapB.Text;
                    soru.cvpC = txt3cevapC.Text;
                    soru.cvpD = txt3cevapD.Text;
                    if (DropDownList4.SelectedValue.ToString().Equals("Seciniz:"))
                    {
                        soru.DogruCvp = null;
                    }
                    else
                    {
                        switch (DropDownList3.SelectedValue.ToString())
                        {
                            case "A":
                                soru.DogruCvp = txt3cevapA.Text;
                                break;
                            case "B":
                                soru.DogruCvp = txt3cevapB.Text;
                                break;
                            case "C":
                                soru.DogruCvp = txt3cevapC.Text;
                                break;
                            case "D":
                                soru.DogruCvp = txt3cevapD.Text;
                                break;
                        }
                    }
                    ent.Sorularr.Add(soru);
                }
                else if (i == 3)
                {
                    soru.soru4 = txtsoru4.Text;
                    soru.cvpA = txt4cevapA.Text;
                    soru.cvpB = txt4cevapB.Text;
                    soru.cvpC = txt4cevapC.Text;
                    soru.cvpD = txt4cevapD.Text;
                    if (DropDownList5.SelectedValue.ToString().Equals("Seciniz:"))
                    {
                        soru.DogruCvp = null;
                    }
                    else
                    {
                        switch (DropDownList4.SelectedValue.ToString())
                        {
                            case "A":
                                soru.DogruCvp = txt4cevapA.Text;
                                break;
                            case "B":
                                soru.DogruCvp = txt4cevapB.Text;
                                break;
                            case "C":
                                soru.DogruCvp = txt4cevapC.Text;
                                break;
                            case "D":
                                soru.DogruCvp = txt4cevapD.Text;
                                break;
                        }
                    }
                    ent.Sorularr.Add(soru);
                }
            }
            ent.SaveChanges();
            Response.Redirect("SınavListeEkranı.aspx");
        }
    }
}
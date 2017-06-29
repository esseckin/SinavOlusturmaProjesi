<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirişEkranı.aspx.cs" Inherits="KonusarakOgrenProje.GirişEkranı" EnableEventValidation="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblAd" runat="server" Text="Kullanıcı Adı : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAd" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ErrorMessage="* Bos gecilemez.Lutfen kullanici adinizi giriniz." ControlToValidate="txtAd" ValidationGroup="giris" ForeColor="Red" runat="server" /></td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblSifre" runat="server" Text="Parola : "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ErrorMessage="* Bos gecilemez.Lutfen parolanizi giriniz." ControlToValidate="txtSifre" ValidationGroup="giris"  ForeColor="Red" runat="server" />

                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnGiris" runat="server" Text="Giriş Yap" OnClick="btnGiris_Click" ValidationGroup="giris" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblBilgi" runat="server" Text=""></asp:Label></td>
                </tr>
                
            </table>

        </div>
    </form>
</body>
</html>

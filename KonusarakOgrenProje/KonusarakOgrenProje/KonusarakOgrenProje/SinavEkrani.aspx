<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SinavEkrani.aspx.cs" Inherits="KonusarakOgrenProje.SinavEkrani" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sınav Ekranı</title>
    <link href="Style/Style2.css" rel="stylesheet" />
    
</head>
<body>
    <div>
        <form runat="server">
            <asp:TextBox ID="txtmetinn" runat="server" TextMode="MultiLine" Width="597px" Height="55px" ReadOnly="True" BackColor="#FFFFCC" />

            <table class="tableclass" id="soru1">
                <tr>
                    <td colspan="2">Soru1 :
                        <asp:TextBox runat="server" Width="592px" ID="txtsoru11" ReadOnly="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label Text="A) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn1A" runat="server" style="width: 178px;" />
                    </td>
                    <td>
                        <asp:Label Text="B) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn1B" runat="server" style="width: 178px;" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label Text="C) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn1C" runat="server" style="width: 178px;" />
                    </td>
                    <td class="auto-style3">
                        <asp:Label Text="D) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn1D" runat="server" style="width: 178px;" />
                        &nbsp;<br />
                    </td>
                </tr>
            </table>
                <input type="hidden" name="dc1" id="dc1" />
            <table class="tableclass" id="soru2">
                <tr>
                    <td colspan="2"></td>
                </tr>
                &nbsp; &nbsp;
                             <tr>
                                 <td colspan="2">Soru2 :<asp:TextBox ID="txtsoru22" runat="server" Width="592px" ReadOnly="True" />
                                 </td>
                             </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label Text="A) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn2A" runat="server" style="width: 178px;" />
                    </td>
                    <td>
                        <asp:Label Text="B) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn2B" runat="server" style="width: 178px;" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label Text="C) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn2C" runat="server" style="width: 178px;" />
                    </td>
                    <td>
                        <asp:Label Text="D) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn2D" runat="server" style="width: 178px;" />
                        &nbsp;<br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>

            <table class="tableclass" id="soru3">
                <tr>
                    <td colspan="2">Soru3 :
                        <asp:TextBox ID="txtsoru33" runat="server" Width="592px" ReadOnly="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label Text="A) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn3A" runat="server" style="width: 178px;" />
                    </td>
                    <td>
                        <asp:Label Text="B) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn3B" runat="server" style="width: 178px;" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label Text="C) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn3C" runat="server" style="width: 178px;" />
                    </td>
                    <td>
                        <asp:Label Text="D) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn3D" runat="server" style="width: 178px;" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>

            <table class="tableclass" id="soru4">
                <tr>
                    <td colspan="2">Soru4 :
                        <asp:TextBox ID="txtsoru44" runat="server" Width="592px" ReadOnly="True" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label Text="A) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn4A" runat="server" style="width: 178px;" />
                    </td>
                    <td>
                        <asp:Label Text="B) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn4B" runat="server" style="width: 178px;" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label Text="C) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn4C" runat="server" style="width: 178px;" />
                    </td>
                    <td>
                        <asp:Label Text="D) " runat="server" />
                        <input type="button" value="" class="btn-response" id="Btn4D" runat="server" style="width: 178px;" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
                &nbsp; &nbsp;
            </table>
            <table class="tableclass">
                <tr>
                    <td colspan="2" style="position: center; margin-right: auto; margin-left: auto; text-align: center;">
                        <input type="button" id="btnTamamla" value="Sınavı Tamamla" style="height: 50px; width: 224px" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>
<script src="scripts/jquery-3.1.1.js"></script>
<script src="scripts/main.js"></script>
<script type="text/javascript">
    function GetResponse()
    {
        var dc1 = '<%= Session["Cevap1"] %>';
        var dc2 = '<%= Session["Cevap2"] %>';
        var dc3 = '<%= Session["Cevap3"] %>';
        var dc4 = '<%= Session["Cevap4"] %>';
        var response = [];
        response.push(dc1);
        response.push(dc2);
        response.push(dc3);
        response.push(dc4);
        return response;
    }
</script>

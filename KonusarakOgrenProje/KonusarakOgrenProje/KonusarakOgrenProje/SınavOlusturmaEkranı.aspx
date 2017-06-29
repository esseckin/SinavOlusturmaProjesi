<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SınavOlusturmaEkranı.aspx.cs" Inherits="KonusarakOgrenProje.deneme1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sınav Olusturma Ekranı</title>
    <link href="Style/Style1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
            <asp:Panel ID="Panel1" runat="server" Height="200px">
                <table border="1">
                    <tr class="uzunmetin">
                        <td colspan="2">
                            <asp:TextBox ID="txtmetin" runat="server" TextMode="MultiLine" Width="597px" Height="55px" ReadOnly="True" BackColor="#FFFF99" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Soru1 :
                            <asp:TextBox runat="server" Width="592px" ID="txtsoru1" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">A)&nbsp;<asp:TextBox ID="txt1cevapA" runat="server" Width="258px" />
                            &nbsp;</td>
                        <td>B)&nbsp;<asp:TextBox ID="txt1cevapB" runat="server" Width="258px" />
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">C)
                            <asp:TextBox ID="txt1cevapC" runat="server" Width="258px" />
                        </td>
                        <td>D)&nbsp;<asp:TextBox ID="txt1cevapD" runat="server" Width="258px" />
                            &nbsp;<br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">Dogru cevabı seciniz: 
                      <asp:DropDownList ID="DropDownList2" runat="server">
                          <asp:ListItem Text="Seciniz :" />
                          <asp:ListItem Text="A" />
                          <asp:ListItem Text="B" />
                          <asp:ListItem Text="C" />
                          <asp:ListItem Text="D" />
                      </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <caption>
                        &nbsp; &nbsp;
                                 <tr>
                                     <td colspan="2">Soru2 :
                                         <asp:TextBox ID="txtsoru2" runat="server" Width="592px" />
                                     </td>
                                 </tr>
                        <tr>
                            <td class="auto-style1">A)
                                         <asp:TextBox ID="txt2cevapA" runat="server" Width="258px" />
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="B) "></asp:Label>
                                <asp:TextBox ID="txt2cevapB" runat="server" Width="258px" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style1">C)
                                         <asp:TextBox ID="txt2cevapC" runat="server" Width="258px" />
                                &nbsp;</td>
                            <td>D)
                                         <asp:TextBox ID="txt2cevapD" runat="server" Width="258px" />
                                &nbsp;<br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">Dogru cevabı seciniz:
                                         <asp:DropDownList ID="DropDownList3" runat="server">
                                             <asp:ListItem Text="Seciniz:" />
                                             <asp:ListItem Text="A" />
                                             <asp:ListItem Text="B" />
                                             <asp:ListItem Text="C" />
                                             <asp:ListItem Text="D" />
                                         </asp:DropDownList>
                            </td>
                        </tr>
                        <caption>
                            &nbsp; &nbsp;
                                     <tr>
                                         <td class="auto-style2" colspan="2">Soru3 :
                                             <asp:TextBox ID="txtsoru3" runat="server" Width="592px" />
                                         </td>
                                     </tr>
                            <tr>
                                <td class="auto-style1">A)
                                             <asp:TextBox ID="txt3cevapA" runat="server" Width="258px" />
                                    &nbsp;</td>
                                <td>B)&nbsp;<asp:TextBox ID="txt3cevapB" runat="server" Width="292px" />
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">C)
                                             <asp:TextBox ID="txt3cevapC" runat="server" Width="258px" />
                                    &nbsp;</td>
                                <td>D)
                                             <asp:TextBox ID="txt3cevapD" runat="server" Width="292px" />
                                    &nbsp;<br />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">Dogru cevabı seciniz:
                                             <asp:DropDownList ID="DropDownList4" runat="server">
                                                 <asp:ListItem Text="Seciniz:" />
                                                 <asp:ListItem Text="A" />
                                                 <asp:ListItem Text="B" />
                                                 <asp:ListItem Text="C" />
                                                 <asp:ListItem Text="D" />
                                             </asp:DropDownList>
                                </td>
                            </tr>
                            <caption>
                                &nbsp; &nbsp;
                                         <tr>
                                             <td colspan="2">Soru4 :
                                                 <asp:TextBox ID="txtsoru4" runat="server" Width="592px" />
                                             </td>
                                         </tr>
                                <tr>
                                    <td class="auto-style1">A)
                                                 <asp:TextBox ID="txt4cevapA" runat="server" Width="258px" />
                                        &nbsp;</td>
                                    <td>B)&nbsp;<asp:TextBox ID="txt4cevapB" runat="server" Width="292px" />
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">C)
                                                 <asp:TextBox ID="txt4cevapC" runat="server" Width="258px" />
                                        &nbsp;</td>
                                    <td>D)
                                                 <asp:TextBox ID="txt4cevapD" runat="server" Width="292px" />
                                        &nbsp;<br />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">Dogru cevabı seciniz:
                                                 <asp:DropDownList ID="DropDownList5" runat="server">
                                                     <asp:ListItem Text="Seciniz:" />
                                                     <asp:ListItem Text="A" />
                                                     <asp:ListItem Text="B" />
                                                     <asp:ListItem Text="C" />
                                                     <asp:ListItem Text="D" />
                                                 </asp:DropDownList>
                                    </td>
                                </tr>
                                <caption>
                                    &nbsp; &nbsp;
                                             <tr>
                                                 <td colspan="2" style="position: center; margin-right: auto; margin-left: auto; text-align: center;">
                                                     <asp:Button ID="btnSnvOlustur" runat="server" Height="50px" OnClick="btnSnvOlustur_Click" Text="Sınav Olustur" Width="224px" />
                                                     <asp:ListBox ID="lstbx1" runat="server" />
                                                 </td>
                                             </tr>
                                </caption>
                            </caption>
                        </caption>
                    </caption>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>

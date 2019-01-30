<%@ Page Title="Kontakt" Language="C#" MasterPageFile="~/templates/Ostalo.Master" AutoEventWireup="true" CodeBehind="kontakt.aspx.cs" Inherits="wsagapenekretnine.kontakt" %>

<asp:Content ID="ContentGalleryHeadCss" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadCss" runat="server">
</asp:Content>
<asp:Content ID="ContentGalleryHeadJs" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadJs" runat="server">
</asp:Content>
<asp:Content ID="ContentNekeretnineJs" ContentPlaceHolderID="ContentPlaceHolderNekeretnineJs" runat="server">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style3 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="ContentBanner" ContentPlaceHolderID="ContentPlaceHolderBanner" runat="server">
    <!--nekretnine, o nama, galerija, autor, kontakt-->
    <div class="w3ls-inner-banner">
        <div class="container">
            <h2>Kontakt</h2>
            <label></label>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentGallery" ContentPlaceHolderID="ContentPlaceHolderGallery" runat="server">
</asp:Content>
<asp:Content ID="ContentWelcome" ContentPlaceHolderID="ContentPlaceHolderWelcome" runat="server">
</asp:Content>
<asp:Content ID="ContentAgents" ContentPlaceHolderID="ContentPlaceHolderAgents" runat="server">
</asp:Content>
<asp:Content ID="ContentContact" ContentPlaceHolderID="ContentPlaceHolderContact" runat="server">
    <div class="w3layouts-contact-section">
        <div class="container">
            <div class="agileits-contact-main">
                <div class="col-md-6 w3ls-map">
                    <p class="loc">Naša lokacija</p>
                    <iframe width="600" height="450" frameborder="0" style="border: 0" src="https://www.google.com/maps/embed/v1/place?q=Cvijiceva%2025&key=AIzaSyADA56EIQo5Gr007jci56Nifir85wkyHJw"></iframe>
                </div>
                <div class="col-md-6 wthree-contact-in">
                    <p class="sed-para"></p>
                    <p class="para1"></p>
                    <div class="w3-address">
                        <address>
                            <strong>Agape, Agencija za nekretnine
                            </strong>
                            <br />
                            Cvijićeva 25<br />
                                    Beograd<br />
                                    Srbija<br />
                                <abbr title="Phone">P:</abbr>
                            063/7246152
                        </address>
                        <address>
                            <strong>Email</strong><br />
                            <a href="mailto:agapenekretnine@yahoo.com">agapenekretnine(at)yahoo.com</a>
                        </address>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="agileinfo-contact-bottom">
                <h3 class="text-center find">Pošaljite nam poruku</h3>
                <p class="contactpara1 text-center">Sva polja moraju biti popunjena!</p>

                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style1" colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="LabelIme" runat="server" Text="Ime i prezime:"></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorIme" runat="server" ControlToValidate="TextBoxIme" CssClass="alert-danger" ErrorMessage="Polje ime je obavezno!" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:Label ID="LabelPoruka" runat="server" Text="Poruka: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPoruka" runat="server" ControlToValidate="TextBoxPoruka" CssClass="alert-danger" ErrorMessage="Polje poruke je obavezno!" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBoxIme" runat="server" Width="490px"></asp:TextBox>
                        </td>
                        <td rowspan="5">
                            <asp:TextBox ID="TextBoxPoruka" runat="server" Height="88px" TextMode="MultiLine" Width="490px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorIme2" runat="server" ControlToValidate="TextBoxIme" ErrorMessage="Mora te uneti ime i prezime! Mora te uneti slova!" Font-Bold="True" ValidationExpression="([a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)">Mora te uneti ime i prezime! Mora te uneti slova!</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="LabelMail" runat="server" Text="Mail: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorMail" runat="server" ControlToValidate="TextBoxMail" CssClass="alert-danger" ErrorMessage="Polje mail je obavezno!" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBoxMail" runat="server" Width="490px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorMail" runat="server" ControlToValidate="TextBoxMail" ErrorMessage="Mail nije u dobrom formatu!" Font-Bold="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Mail nije u dobrom formatu!</asp:RegularExpressionValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="LabelNaslov" runat="server" Text="Naslov: "></asp:Label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNaslov" runat="server" ControlToValidate="TextBoxNaslov" CssClass="alert-danger" ErrorMessage="Polje naslov je obavezno!" Font-Bold="True">*</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPoruka" runat="server" ControlToValidate="TextBoxPoruka" ErrorMessage="Poruka mora sadrzati bar 10 karaktera!" Font-Bold="True" ValidationExpression=".{10,}">Poruka mora sadrzati bar 10 karaktera!</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="TextBoxNaslov" runat="server" Width="490px"></asp:TextBox>
                        </td>
                        <td rowspan="2">
                            <asp:Button ID="btnPosalji" CssClass="send" runat="server" Height="32px" Text="Pošalji" Width="90px" Font-Bold="True" OnClick="btnPosalji_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidatorNaslov" runat="server" ControlToValidate="TextBoxNaslov" ErrorMessage="Za naslov morate uneti slova ili brojeve!" Font-Bold="True" ValidationExpression=".{1,}">Za naslov morate uneti slova ili brojeve!</asp:RegularExpressionValidator>
                        </td>

                    </tr>
                    <tr>
                        <td class="auto-style1">&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="2">&nbsp;</td>
                    </tr>
                </table>
                <div id="podaci" runat="server"></div>
            </div>
        </div>
    </div>
</asp:Content>

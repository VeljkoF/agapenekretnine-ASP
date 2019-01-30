<%@ Page Title="Prijava" Language="C#" MasterPageFile="~/templates/Ostalo.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="wsagapenekretnine.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadCss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadJs" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderNekeretnineJs" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }

        .auto-style2 {
            width: 190px;
        }
        .auto-style3 {
            width: 190px;
            height: 11px;
        }
        .auto-style4 {
            width: 198px;
            height: 11px;
        }
        .auto-style5 {
            height: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderBanner" runat="server">
    <!--nekretnine, o nama, galerija, autor, kontakt-->
    <div class="w3ls-inner-banner">
        <div class="container">
            <h2>Prijava</h2>
            <label></label>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolderGallery" runat="server">

            <table style="width: 100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="tbEmail" runat="server" Width="170px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="*Email polje je obavezno!" Font-Bold="True" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Pogrešan unos!" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Pogrešan unos!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    </td>
                    <td class="auto-style4">
                    </td>
                    <td class="auto-style5">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Lozinka:"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="tbLozinka" runat="server" Width="170px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorLozinka" runat="server" ControlToValidate="tbLozinka" ErrorMessage="*Lozinka polje je obavezno!" Font-Bold="True" Font-Italic="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbLozinka" ErrorMessage="Pogrešan unos!" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="[A-z]{1,}|\d{1,}|[A-z]{1,}\d{1,}|\d{1,}[A-z]{1,}">Pogrešan unos!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                    </td>
                    <td class="auto-style4">
                    </td>
                    <td class="auto-style5">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnPrijava" runat="server" Text="Prijava" OnClick="btnPrijava_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>

</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolderWelcome" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="ContentPlaceHolderAgents" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="ContentPlaceHolderContact" runat="server">
</asp:Content>


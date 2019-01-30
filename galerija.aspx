<%@ Page Title="Galerija" Language="C#" MasterPageFile="~/templates/Ostalo.Master" AutoEventWireup="true" CodeBehind="galerija.aspx.cs" Inherits="wsagapenekretnine.galerija" %>

<asp:Content ID="ContentGalleryHeadCss" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadCss" runat="server">
    <link href="../css/lightbox.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="ContentGalleryHeadJs" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadJs" runat="server">
    <script src="../js/lightbox.min.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="ContentNekeretnineJs" ContentPlaceHolderID="ContentPlaceHolderNekeretnineJs" runat="server">
</asp:Content>
<asp:Content ID="ContentBanner" ContentPlaceHolderID="ContentPlaceHolderBanner" runat="server">
    <!--nekretnine, o nama, galerija, autor, kontakt-->
    <div class="w3ls-inner-banner">
        <div class="container">
            <h2>Galerija</h2>
            <label></label>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentGallery" ContentPlaceHolderID="ContentPlaceHolderGallery" runat="server">
    <asp:SqlDataSource ID="SqlDataSourceGalerija" runat="server" ConnectionString="<%$ ConnectionStrings:KonekcijaSaBazom %>" SelectCommand="SELECT * FROM [Nekretnine]"></asp:SqlDataSource>
    <asp:Repeater ID="RepeaterGalerija" runat="server" DataSourceID="SqlDataSourceGalerija">
        <ItemTemplate>
            <div class="gallery_gds">
                <div class="filtr-container " style="padding: 0px; position: relative; height: auto;">
                    <div class='col-md-4 col-ms-6 jm-item first filtr-item' data-category='<%# Eval("IdNekretnine") %>' data-sort='Busy streets'>
                        <div class='jm-item-wrapper'>
                            <div class='jm-item-image'>
                                <div class='gslika'>
                                    <asp:HyperLink ID="HyperLinkSLika" runat="server" CssClass="centar" NavigateUrl='<%#Eval("PutanjaSlikeNekretnine") %>' data-lightbox = 'galerija' data-title = '<%# Eval("IdNekretnine") %>'>
                                        <asp:Image ID="ImageNekretnine" Width="300px" CssClass="margine0pxauto" runat="server" ImageUrl='<%#Eval("PutanjaSlikeNekretnine") %>' />
                                    </asp:HyperLink>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="ContentWelcome" ContentPlaceHolderID="ContentPlaceHolderWelcome" runat="server">
</asp:Content>
<asp:Content ID="ContentAgents" ContentPlaceHolderID="ContentPlaceHolderAgents" runat="server">
</asp:Content>
<asp:Content ID="ContentContact" ContentPlaceHolderID="ContentPlaceHolderContact" runat="server">
</asp:Content>


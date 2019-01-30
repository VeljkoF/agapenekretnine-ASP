<%@ Page Title="Nekretnine" Language="C#" MasterPageFile="~/templates/Ostalo.Master" AutoEventWireup="true" CodeBehind="nekretnine.aspx.cs" Inherits="wsagapenekretnine.nekretnine" %>

<asp:Content ID="ContentGalleryHeadCss" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadCss" runat="server">
</asp:Content>
<asp:Content ID="ContentGalleryHeadJs" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadJs" runat="server">
</asp:Content>
<asp:Content ID="ContentNekeretnineJs" ContentPlaceHolderID="ContentPlaceHolderNekeretnineJs" runat="server">
</asp:Content>
<asp:Content ID="ContentBanner" ContentPlaceHolderID="ContentPlaceHolderBanner" runat="server">
    <!--nekretnine, o nama, galerija, autor, kontakt-->
    <div class="w3ls-inner-banner">
        <div class="container">
            <h2>Nekretnine</h2>
            <label></label>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentGallery" ContentPlaceHolderID="ContentPlaceHolderGallery" runat="server">
    <div class="gallery_gds">
        <div class="filtr-container " style="padding: 0px; position: relative; height: 858px;">

            <asp:SqlDataSource ID="SqlDataSourceTipNekretnine" runat="server" ConnectionString="<%$ ConnectionStrings:KonekcijaSaBazom %>" SelectCommand="spSelectNekretnineTipNekretnine" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

            <asp:GridView ID="GridViewNekretnine" runat="server" AllowPaging="True" CssClass="centar" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdNekretnine,IdTipNekretnine1" DataSourceID="SqlDataSourceTipNekretnine" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="NazivTipNekretnine" HeaderText="Tip nekretnine" SortExpression="NazivTipNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle Font-Bold="True" CssClass="centar" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="UlicaNekretnine" HeaderText="Ulica" SortExpression="UlicaNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle Font-Bold="True" CssClass="centar" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GradNekretnine" HeaderText="Grad" SortExpression="GradNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle Font-Bold="True" CssClass="centar" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CenaNekretnine" HeaderText="Cena" SortExpression="CenaNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle Font-Bold="True" CssClass="centar" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="OpisNekretnine" HeaderText="Opis" SortExpression="OpisNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle Font-Bold="True" CssClass="centar" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="BrojSObaNekretnine" HeaderText="Br. soba" SortExpression="BrojSObaNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle Font-Bold="True" CssClass="centar" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="KvadraturaStana" HeaderText="Kvadratura stana" SortExpression="KvadraturaStana">
                        <ControlStyle Width="200px" />
                        <HeaderStyle Font-Bold="True" CssClass="centar" Font-Italic="True" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="PutanjaSlikeNekretnine" ItemStyle-Width="200px" HeaderText="Slika">
                        <ControlStyle Width="200px" />
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        <HeaderStyle Font-Bold="True" CssClass="centar" Font-Italic="True" HorizontalAlign="Center" Width="200px" VerticalAlign="Middle" Wrap="False" />
                        <ItemStyle Width="200px" HorizontalAlign="Center" VerticalAlign="Middle"></ItemStyle>
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="center" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentWelcome" ContentPlaceHolderID="ContentPlaceHolderWelcome" runat="server">
</asp:Content>
<asp:Content ID="ContentAgents" ContentPlaceHolderID="ContentPlaceHolderAgents" runat="server">
</asp:Content>
<asp:Content ID="ContentContact" ContentPlaceHolderID="ContentPlaceHolderContact" runat="server">
</asp:Content>


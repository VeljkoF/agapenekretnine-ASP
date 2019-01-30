<%@ Page Title="Admin Korisnici" Language="C#" MasterPageFile="~/templates/Admin.Master" AutoEventWireup="true" CodeBehind="adminKorisnici.aspx.cs" Inherits="wsagapenekretnine.admin.adminKorisnici" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadCss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadJs" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderNekeretnineJs" runat="server">
</asp:Content>
<asp:Content ID="ContentBanner" ContentPlaceHolderID="ContentPlaceHolderBanner" runat="server">
    <!--nekretnine, o nama, galerija, autor, kontakt-->
    <div class="w3ls-inner-banner">
        <div class="container">
            <h2>Admin korisnici</h2>
            <label></label>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentAdmin" ContentPlaceHolderID="ContentPlaceHolderAdmin" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DetailsView ID="DetailsViewKorisnici" CssClass="centar center-block3" runat="server" AutoGenerateRows="False" DataKeyNames="IdKorisnika" DataSourceID="SqlDataSourceKorisnici"  CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                    <EditRowStyle Font-Bold="True" BackColor="#CCCCCC" ForeColor="#000000"/>
                    <Fields>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Image" CancelImageUrl="~/images/komande/close2.png" DeleteImageUrl="~/images/komande/delete.png" EditImageUrl="~/images/komande/edit.png" InsertImageUrl="~/images/komande/insert.png" NewImageUrl="~/images/komande/add.png" SelectImageUrl="~/images/komande/select.png" UpdateImageUrl="~/images/komande/edit.png" >
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="300px" />
                        </asp:CommandField>
                        <asp:BoundField DataField="EmailKorisnika" HeaderText="Email: " SortExpression="EmailKorisnika" >
                        <ControlStyle Width="200px" />
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="LozinkaKorisnika" HeaderText="Lozinka: " SortExpression="LozinkaKorisnika">
                        <ControlStyle Width="200px" />
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        </asp:BoundField>
                    </Fields>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:SqlDataSource ID="SqlDataSourceKorisnici" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KonekcijaSaBazom %>" DeleteCommand="DELETE FROM [Korisnici] WHERE [IdKorisnika] = @original_IdKorisnika AND [EmailKorisnika] = @original_EmailKorisnika AND [LozinkaKorisnika] = @original_LozinkaKorisnika" InsertCommand="INSERT INTO [Korisnici] ([EmailKorisnika], [LozinkaKorisnika]) VALUES (@EmailKorisnika, @LozinkaKorisnika)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Korisnici]" UpdateCommand="UPDATE [Korisnici] SET [EmailKorisnika] = @EmailKorisnika, [LozinkaKorisnika] = @LozinkaKorisnika WHERE [IdKorisnika] = @original_IdKorisnika AND [EmailKorisnika] = @original_EmailKorisnika AND [LozinkaKorisnika] = @original_LozinkaKorisnika">
                    <DeleteParameters>
                        <asp:Parameter Name="original_IdKorisnika" Type="Int32" />
                        <asp:Parameter Name="original_EmailKorisnika" Type="String" />
                        <asp:Parameter Name="original_LozinkaKorisnika" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="EmailKorisnika" Type="String" />
                        <asp:Parameter Name="LozinkaKorisnika" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="EmailKorisnika" Type="String" />
                        <asp:Parameter Name="LozinkaKorisnika" Type="String" />
                        <asp:Parameter Name="original_IdKorisnika" Type="Int32" />
                        <asp:Parameter Name="original_EmailKorisnika" Type="String" />
                        <asp:Parameter Name="original_LozinkaKorisnika" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">
                <asp:GridView ID="GridViewKorisnici" CssClass="centar center-block3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdKorisnika" DataSourceID="SqlDataSourceKorisnici" OnSelectedIndexChanged="GridViewKorisnici_SelectedIndexChanged" CellPadding="4" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                        <asp:BoundField DataField="EmailKorisnika" HeaderText="Email korisnika" SortExpression="EmailKorisnika" >
                        <ControlStyle Width="200px" />
                        <FooterStyle Font-Bold="True" Width="200px" />
                        <HeaderStyle Font-Bold="True" Height="25px" CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" Font-Size="Medium" />
                        </asp:BoundField>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/komande/select.png" >
                        <HeaderStyle Width="50px" />
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#003399" BackColor="White" />
                    <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="#000000" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


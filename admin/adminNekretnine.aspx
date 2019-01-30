<%@ Page Title="Admin Nekretnine" Language="C#" MasterPageFile="~/templates/Admin.Master" AutoEventWireup="true" CodeBehind="adminNekretnine.aspx.cs" Inherits="wsagapenekretnine.admin.adminNekretnine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadCss" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderGalleryHeadJs" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderNekeretnineJs" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 273px;
        }
    </style>
</asp:Content>
<asp:Content ID="ContentBanner" ContentPlaceHolderID="ContentPlaceHolderBanner" runat="server">
    <!--nekretnine, o nama, galerija, autor, kontakt-->
    <div class="w3ls-inner-banner">
        <div class="container">
            <h2>Admin nekretnine</h2>
            <label></label>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentAdmin" ContentPlaceHolderID="ContentPlaceHolderAdmin" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSourceNekretnine" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KonekcijaSaBazom %>" DeleteCommand="DELETE FROM [Nekretnine] WHERE [IdNekretnine] = @original_IdNekretnine AND [UlicaNekretnine] = @original_UlicaNekretnine AND [GradNekretnine] = @original_GradNekretnine AND [CenaNekretnine] = @original_CenaNekretnine AND [OpisNekretnine] = @original_OpisNekretnine AND [BrojSObaNekretnine] = @original_BrojSObaNekretnine AND [KvadraturaStana] = @original_KvadraturaStana AND [IdTipNekretnine] = @original_IdTipNekretnine AND [PutanjaSlikeNekretnine] = @original_PutanjaSlikeNekretnine" InsertCommand="INSERT INTO [Nekretnine] ([UlicaNekretnine], [GradNekretnine], [CenaNekretnine], [OpisNekretnine], [BrojSObaNekretnine], [KvadraturaStana], [IdTipNekretnine], [PutanjaSlikeNekretnine]) VALUES (@UlicaNekretnine, @GradNekretnine, @CenaNekretnine, @OpisNekretnine, @BrojSObaNekretnine, @KvadraturaStana, @IdTipNekretnine, @PutanjaSlikeNekretnine)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Nekretnine]" UpdateCommand="UPDATE [Nekretnine] SET [UlicaNekretnine] = @UlicaNekretnine, [GradNekretnine] = @GradNekretnine, [CenaNekretnine] = @CenaNekretnine, [OpisNekretnine] = @OpisNekretnine, [BrojSObaNekretnine] = @BrojSObaNekretnine, [KvadraturaStana] = @KvadraturaStana, [IdTipNekretnine] = @IdTipNekretnine, [PutanjaSlikeNekretnine] = @PutanjaSlikeNekretnine WHERE [IdNekretnine] = @original_IdNekretnine AND [UlicaNekretnine] = @original_UlicaNekretnine AND [GradNekretnine] = @original_GradNekretnine AND [CenaNekretnine] = @original_CenaNekretnine AND [OpisNekretnine] = @original_OpisNekretnine AND [BrojSObaNekretnine] = @original_BrojSObaNekretnine AND [KvadraturaStana] = @original_KvadraturaStana AND [IdTipNekretnine] = @original_IdTipNekretnine AND [PutanjaSlikeNekretnine] = @original_PutanjaSlikeNekretnine">
                    <DeleteParameters>
                        <asp:Parameter Name="original_IdNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_UlicaNekretnine" Type="String" />
                        <asp:Parameter Name="original_GradNekretnine" Type="String" />
                        <asp:Parameter Name="original_CenaNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_OpisNekretnine" Type="String" />
                        <asp:Parameter Name="original_BrojSObaNekretnine" Type="String" />
                        <asp:Parameter Name="original_KvadraturaStana" Type="String" />
                        <asp:Parameter Name="original_IdTipNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_PutanjaSlikeNekretnine" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UlicaNekretnine" Type="String" />
                        <asp:Parameter Name="GradNekretnine" Type="String" />
                        <asp:Parameter Name="CenaNekretnine" Type="Int32" />
                        <asp:Parameter Name="OpisNekretnine" Type="String" />
                        <asp:Parameter Name="BrojSObaNekretnine" Type="String" />
                        <asp:Parameter Name="KvadraturaStana" Type="String" />
                        <asp:Parameter Name="IdTipNekretnine" Type="Int32" />
                        <asp:Parameter Name="PutanjaSlikeNekretnine" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UlicaNekretnine" Type="String" />
                        <asp:Parameter Name="GradNekretnine" Type="String" />
                        <asp:Parameter Name="CenaNekretnine" Type="Int32" />
                        <asp:Parameter Name="OpisNekretnine" Type="String" />
                        <asp:Parameter Name="BrojSObaNekretnine" Type="String" />
                        <asp:Parameter Name="KvadraturaStana" Type="String" />
                        <asp:Parameter Name="IdTipNekretnine" Type="Int32" />
                        <asp:Parameter Name="PutanjaSlikeNekretnine" Type="String" />
                        <asp:Parameter Name="original_IdNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_UlicaNekretnine" Type="String" />
                        <asp:Parameter Name="original_GradNekretnine" Type="String" />
                        <asp:Parameter Name="original_CenaNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_OpisNekretnine" Type="String" />
                        <asp:Parameter Name="original_BrojSObaNekretnine" Type="String" />
                        <asp:Parameter Name="original_KvadraturaStana" Type="String" />
                        <asp:Parameter Name="original_IdTipNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_PutanjaSlikeNekretnine" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSourceNekretnineTipNekretnine" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KonekcijaSaBazom %>" DeleteCommand="DELETE FROM [TipNekretnine] WHERE [IdTipNekretnine] = @original_IdTipNekretnine AND [NazivTipNekretnine] = @original_NazivTipNekretnine" InsertCommand="INSERT INTO [TipNekretnine] ([NazivTipNekretnine]) VALUES (@NazivTipNekretnine)" OldValuesParameterFormatString="original_{0}" SelectCommand="spSelectNekretnineTipNekretnine" UpdateCommand="UPDATE [TipNekretnine] SET [NazivTipNekretnine] = @NazivTipNekretnine WHERE [IdTipNekretnine] = @original_IdTipNekretnine AND [NazivTipNekretnine] = @original_NazivTipNekretnine" SelectCommandType="StoredProcedure">
                    <DeleteParameters>
                        <asp:Parameter Name="original_IdTipNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_NazivTipNekretnine" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NazivTipNekretnine" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NazivTipNekretnine" Type="String" />
                        <asp:Parameter Name="original_IdTipNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_NazivTipNekretnine" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSourceTipNekretnine" runat="server" ConnectionString='<%$ ConnectionStrings:KonekcijaSaBazom %>' SelectCommand="SELECT * FROM [TipNekretnine]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [TipNekretnine] WHERE [IdTipNekretnine] = @original_IdTipNekretnine AND [NazivTipNekretnine] = @original_NazivTipNekretnine" InsertCommand="INSERT INTO [TipNekretnine] ([NazivTipNekretnine]) VALUES (@NazivTipNekretnine)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [TipNekretnine] SET [NazivTipNekretnine] = @NazivTipNekretnine WHERE [IdTipNekretnine] = @original_IdTipNekretnine AND [NazivTipNekretnine] = @original_NazivTipNekretnine">
                    <DeleteParameters>
                        <asp:Parameter Name="original_IdTipNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_NazivTipNekretnine" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NazivTipNekretnine" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NazivTipNekretnine" Type="String" />
                        <asp:Parameter Name="original_IdTipNekretnine" Type="Int32" />
                        <asp:Parameter Name="original_NazivTipNekretnine" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DetailsView ID="DetailsViewNekretnine" runat="server" CssClass="centar center-block3" AutoGenerateRows="False" CellPadding="4" DataKeyNames="IdNekretnine" DataSourceID="SqlDataSourceNekretnine" Height="50px" Width="125px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" OnItemInserting="DetailsViewNekretnine_ItemInserting" OnItemUpdating="DetailsViewNekretnine_ItemUpdating" OnItemDeleting="DetailsViewNekretnine_ItemDeleting" OnDataBound="DetailsViewNekretnine_DataBound">
                    <EditRowStyle Font-Bold="True" BackColor="#CCCCCC" ForeColor="#000000" />
                    <InsertRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="#000000" />
                    <Fields>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Image" CancelImageUrl="~/images/komande/close2.png" DeleteImageUrl="~/images/komande/delete.png" EditImageUrl="~/images/komande/edit.png" InsertImageUrl="~/images/komande/insert.png" NewImageUrl="~/images/komande/add.png" SelectImageUrl="~/images/komande/select.png" UpdateImageUrl="~/images/komande/edit.png" >
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="400px" />
                        </asp:CommandField>
                        <asp:TemplateField HeaderText="Tip nekretnine: ">
                            <ItemTemplate>
                                <asp:TextBox ID="TextBoxTipNekretnine" runat="server" Text='<%# Bind("IdTipNekretnine") %>' Visible="false"></asp:TextBox>
                                <asp:DropDownList ID="DropDownListIdTipNekretnine" AutoPostBack="true" runat="server"   AppendDataBoundItems="true" Enabled="false" DataSourceID="SqlDataSourceTipNekretnine" DataTextField="NazivTipNekretnine" DataValueField="IdTipNekretnine">
                                    <asp:ListItem Value="0">Izaberi...</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                            <EditItemTemplate>
                             <asp:TextBox ID="TextBoxTipNekretnine" runat="server" Text='<%# Bind("IdTipNekretnine") %>' Visible="false"></asp:TextBox>
                                <asp:DropDownList ID="DropDownListIdTipNekretnine" runat="server" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="DropDownListIdTipNekretnine_SelectedIndexChanged" DataSourceID="SqlDataSourceTipNekretnine" DataTextField="NazivTipNekretnine" DataValueField="IdTipNekretnine">
                                    <asp:ListItem Value="0">Izaberi...</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:Label ID="LabelIdTipNekretnine" runat="server" Visible="false" Text='<%# Bind("IdTipNekretnine") %>'></asp:Label>
                                <asp:DropDownList ID="DropDownListIdTipNekretnine" runat="server" AppendDataBoundItems="true" DataSourceID="SqlDataSourceTipNekretnine" DataTextField="NazivTipNekretnine" DataValueField="IdTipNekretnine">
                                    <asp:ListItem Value="0">Izaberi...</asp:ListItem>
                                </asp:DropDownList>
                            </InsertItemTemplate>
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="UlicaNekretnine" HeaderText="Ulica: " SortExpression="UlicaNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="GradNekretnine" HeaderText="Grad: " SortExpression="GradNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CenaNekretnine" HeaderText="Cena: " SortExpression="CenaNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OpisNekretnine" HeaderText="Opis: " SortExpression="OpisNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BrojSObaNekretnine" HeaderText="Br. soba: " SortExpression="BrojSObaNekretnine">
                        <ControlStyle Width="200px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        </asp:BoundField>
                        <asp:BoundField DataField="KvadraturaStana" HeaderText="Kvadratura stana: " SortExpression="KvadraturaStana">
                        <ControlStyle Width="200px" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Slika: ">
                            <ItemTemplate>
                                <asp:Image ID="Slika" runat="server" Width="100" ImageUrl='<%# Bind("PutanjaSlikeNekretnine") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Image ID="Slika" runat="server" Width="100" ImageUrl='<%# Bind("PutanjaSlikeNekretnine") %>' />
                                <asp:FileUpload ID="FileUploadEditSlika" runat="server" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:Image ID="Slika" runat="server" Width="100" ImageUrl='<%# Bind("PutanjaSlikeNekretnine") %>' />
                                <asp:FileUpload ID="FileUploadInsertSlika" runat="server" />
                            </InsertItemTemplate>
                            <ControlStyle Width="200px" />
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" Wrap="False" />
                        </asp:TemplateField>
                    </Fields>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" Wrap="False" HorizontalAlign="Center" VerticalAlign="Middle" />
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
                <asp:GridView ID="GridViewNekretnine" runat="server" AllowPaging="True" CssClass="centar center-block3" HorizontalAlign="Center" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IdNekretnine,IdTipNekretnine1" DataSourceID="SqlDataSourceNekretnineTipNekretnine" PageSize="5" CellPadding="4" OnSelectedIndexChanged="GridViewNekretnine_SelectedIndexChanged" Font-Bold="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">

                    <Columns>
                        <asp:BoundField DataField="NazivTipNekretnine" HeaderText="Tip nekretnine" SortExpression="NazivTipNekretnine">
                            <ControlStyle Width="100px" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <HeaderStyle CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UlicaNekretnine" HeaderText="Ulica" SortExpression="UlicaNekretnine">
                            <ControlStyle Width="100px" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <HeaderStyle CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="GradNekretnine" HeaderText="Grad" SortExpression="GradNekretnine">
                            <ControlStyle Width="100px" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <HeaderStyle CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CenaNekretnine" HeaderText="Cena" SortExpression="CenaNekretnine">
                            <ControlStyle Width="100px" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <HeaderStyle CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="OpisNekretnine" HeaderText="Opis" SortExpression="OpisNekretnine">
                            <ControlStyle Width="100px" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <HeaderStyle CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="BrojSObaNekretnine" HeaderText="Br. soba" SortExpression="BrojSObaNekretnine">
                            <ControlStyle Width="100px" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <HeaderStyle CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="KvadraturaStana" HeaderText="Kvadratura stana" SortExpression="KvadraturaStana">
                            <ControlStyle Width="100px" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <HeaderStyle CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="PutanjaSlikeNekretnine" HeaderText="Slika">
                            <ControlStyle Width="200px" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                            <HeaderStyle CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                        </asp:ImageField>
                        <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/komande/select.png">
                            <ControlStyle Width="50px" />
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                            <HeaderStyle Width="50px" CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
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
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


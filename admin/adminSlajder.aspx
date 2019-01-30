<%@ Page Title="Admin Slider" Language="C#" MasterPageFile="~/templates/Admin.Master" AutoEventWireup="true" CodeBehind="adminSlajder.aspx.cs" Inherits="wsagapenekretnine.admin.adminSlajder" %>

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
            <h2>Admin slider</h2>
            <label></label>
            <div class="clearfix"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="ContentAdmin" ContentPlaceHolderID="ContentPlaceHolderAdmin" runat="server">
    <table style="width: 100%;">
        <tr>
            <td colspan="3">
                <asp:DetailsView ID="DetailsViewSlajder" runat="server" CssClass="centar center-block3" Height="50px" Width="125px" BackColor="White"  BorderWidth="1px" CellPadding="4" BorderColor="#FFFFFF" DataSourceID="SqlDataSourceSlajder" AutoGenerateRows="False" OnItemInserting="DetailsViewSlajder_ItemInserting">
                    <EditRowStyle ForeColor="#000000" />
                    <Fields>
                        <asp:CommandField ShowInsertButton="True" ButtonType="Image" CancelImageUrl="~/images/komande/close2.png" DeleteImageUrl="~/images/komande/delete.png" EditImageUrl="~/images/komande/edit.png" InsertImageUrl="~/images/komande/insert.png" NewImageUrl="~/images/komande/add.png" SelectImageUrl="~/images/komande/select.png" UpdateImageUrl="~/images/komande/edit.png" />
                        <asp:TemplateField HeaderText="Slika: " ShowHeader="false">
                            <ItemTemplate></ItemTemplate>
                            <InsertItemTemplate>
                                <asp:FileUpload ID="FileUploadInsertSlika" runat="server" />
                            </InsertItemTemplate>
                        </asp:TemplateField>
                    </Fields>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                </asp:DetailsView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSourceSlajder" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:KonekcijaSaBazom %>" DeleteCommand="DELETE FROM [Slajder] WHERE [IdSlajder] = @original_IdSlajder AND (([PutanjaSlikeSlajder] = @original_PutanjaSlikeSlajder) OR ([PutanjaSlikeSlajder] IS NULL AND @original_PutanjaSlikeSlajder IS NULL))" InsertCommand="INSERT INTO [Slajder] ([PutanjaSlikeSlajder]) VALUES (@PutanjaSlikeSlajder)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Slajder]" UpdateCommand="UPDATE [Slajder] SET [PutanjaSlikeSlajder] = @PutanjaSlikeSlajder WHERE [IdSlajder] = @original_IdSlajder AND (([PutanjaSlikeSlajder] = @original_PutanjaSlikeSlajder) OR ([PutanjaSlikeSlajder] IS NULL AND @original_PutanjaSlikeSlajder IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_IdSlajder" Type="Int32" />
                        <asp:Parameter Name="original_PutanjaSlikeSlajder" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PutanjaSlikeSlajder" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PutanjaSlikeSlajder" Type="String" />
                        <asp:Parameter Name="original_IdSlajder" Type="Int32" />
                        <asp:Parameter Name="original_PutanjaSlikeSlajder" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridViewSlajder" runat="server" CssClass="centar center-block3" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IdSlajder" DataSourceID="SqlDataSourceSlajder" PageSize="5" OnSelectedIndexChanged="GridViewSlajder_SelectedIndexChanged" OnRowDeleting="GridViewSlajder_RowDeleting" OnRowEditing="GridViewSlajder_RowEditing" OnRowUpdating="GridViewSlajder_RowUpdating">
                    <Columns>
                        <asp:TemplateField HeaderText="Slika: ">
                            <ControlStyle Width="200px" />
                            <FooterStyle Font-Bold="True" Width="200px" />
                            <HeaderStyle Font-Bold="True" Height="25px" CssClass="centar" HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" Width="200px" Font-Size="Medium" />
                            <ItemTemplate>
                                <asp:Image ID="Slika" runat="server" Width="100" ImageUrl='<%# Bind("PutanjaSlikeSlajder") %>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Image ID="Slika" runat="server" Width="100" ImageUrl='<%# Bind("PutanjaSlikeSlajder") %>' />
                                <asp:FileUpload ID="FileUploadEditSlika" runat="server" />
                            </EditItemTemplate>
                        </asp:TemplateField>

                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/komande/select.png" CancelImageUrl="~/images/komande/close2.png" DeleteImageUrl="~/images/komande/delete.png" EditImageUrl="~/images/komande/edit.png" InsertImageUrl="~/images/komande/insert.png" NewImageUrl="~/images/komande/add.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/images/komande/edit.png" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" HorizontalAlign="Center" VerticalAlign="Middle" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#003399" BackColor="White" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>


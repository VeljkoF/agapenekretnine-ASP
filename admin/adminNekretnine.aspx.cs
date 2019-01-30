using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace wsagapenekretnine.admin
{
    public partial class adminNekretnine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
            {
                Response.Redirect("~/pocetna.aspx");
            }
           
        }

        protected void GridViewNekretnine_SelectedIndexChanged(object sender, EventArgs e)
        {

            DetailsViewNekretnine.PageIndex = GridViewNekretnine.SelectedIndex;
        }

        protected void DetailsViewNekretnine_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            Admin masterOstaloSablon = (Admin)this.Master;

            string uploadFolder = Server.MapPath("~/images/nekretnine/");
            FileUpload novaSlika = (FileUpload)DetailsViewNekretnine.FindControl("FileUploadInsertSlika");
            DropDownList listaIdTipNekretnine = (DropDownList)DetailsViewNekretnine.FindControl("DropDownListIdTipNekretnine");
            if (listaIdTipNekretnine.SelectedIndex != 0)
            {
                e.Values["IdTipNekretnine"] = listaIdTipNekretnine.SelectedValue;
                masterOstaloSablon.ispisPoruke("Dodali ste novu nekretninu!", "alert-success center");

            }
            else
            {
                masterOstaloSablon.ispisPoruke("Niste odabrali tip nekretnine!", "alert-danger center");
            }
            if (novaSlika != null && novaSlika.HasFile)
            {
                string fileName = novaSlika.PostedFile.FileName;
                string promenjenoIme = String.Format("{0}_{1}", DateTime.Now.ToString("ddMMyyyy"), fileName);
                novaSlika.SaveAs(Server.MapPath("~/images/nekretnine/" + promenjenoIme));

                e.Values["PutanjaSlikeNekretnine"] = "~/images/nekretnine/" + promenjenoIme;
                masterOstaloSablon.ispisPoruke("Dodali ste novu nekretninu!", "alert-success center");
            }
            else
            {
                masterOstaloSablon.ispisPoruke("Niste odabrali sliku za dodavanje!", "alert-danger center");
                
            }
            GridViewNekretnine.DataBind();

            
        }

        protected void DetailsViewNekretnine_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            Admin masterOstaloSablon = (Admin)this.Master;

            string uploadFolder = Server.MapPath("~/images/nekretnine/");
            FileUpload novaSlika = (FileUpload)DetailsViewNekretnine.FindControl("FileUploadEditSlika");
            Image staraSlika = (Image)DetailsViewNekretnine.FindControl("Slika");
            if (novaSlika != null && novaSlika.HasFile)
            {
                string staraPutanja = staraSlika.ImageUrl;
                FileInfo podaciOfajlu = new FileInfo(Server.MapPath(staraPutanja));
                if (podaciOfajlu.Exists)
                {
                    File.Delete(Server.MapPath(staraPutanja));
                }
                string fileName = novaSlika.PostedFile.FileName;
                string promenjenoIme = String.Format("{0}_{1}", DateTime.Now.ToString("ddMMyyyy"), fileName);
                novaSlika.SaveAs(Server.MapPath("~/images/nekretnine/" + promenjenoIme));

                e.NewValues["PutanjaSlikeNekretnine"] = "~/images/nekretnine/" + promenjenoIme;
                masterOstaloSablon.ispisPoruke("Uspešno ste izmenili nekretninu!", "alert-success center");
                GridViewNekretnine.DataBind();
            }
            else
            {
                e.NewValues["PutanjaSlikeSlajder"] = staraSlika.ImageUrl;
                masterOstaloSablon.ispisPoruke("Niste odabrali sliku za dodavanje!", "alert-danger, center");
            }
            DropDownList listaIdTipNekretnine = (DropDownList)DetailsViewNekretnine.FindControl("DropDownListIdTipNekretnine");
            e.NewValues["IdTipNekretnine"] = listaIdTipNekretnine.SelectedValue;
            masterOstaloSablon.ispisPoruke("Uspešno ste izmenili nekretninu!", "alert-success center");
            GridViewNekretnine.DataBind();
        }

        protected void DetailsViewNekretnine_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
            Admin masterOstaloSablon = (Admin)this.Master;

            int IdNekretnine = Convert.ToInt32(GridViewNekretnine.Rows[e.RowIndex].FindControl("IdNekretnine"));
            Image staraSlika = (Image)DetailsViewNekretnine.Rows[e.RowIndex].FindControl("Slika");
            string staraPutanja = staraSlika.ImageUrl;
            FileInfo podaciOfajlu = new FileInfo(Server.MapPath(staraPutanja));
            if (podaciOfajlu.Exists && IdNekretnine != null)
            {
                string konekcijaString = WebConfigurationManager.ConnectionStrings["KonekcijaSaBazom"].ConnectionString;
                SqlConnection kon = new SqlConnection(konekcijaString);
                string upit = "DELETE FROM Nekretnine WHERE IdNekretnine = "+IdNekretnine;
                SqlCommand kom = new SqlCommand(upit, kon);
                kom.CommandType = CommandType.Text;

                kom.Connection = kon;
                kon.Open();
                kom.ExecuteNonQuery();
                File.Delete(Server.MapPath(staraPutanja));
                kon.Close();
                GridViewNekretnine.DataBind();
                masterOstaloSablon.ispisPoruke("Uspešno ste obrisali nekretninu!", "alert-success center");
            }
        }

        protected void DetailsViewNekretnine_DataBound(object sender, EventArgs e)
        {
            TextBox labelaIdTipNekretnine = (TextBox)DetailsViewNekretnine.FindControl("TextBoxTipNekretnine");
            DropDownList listaIdTipNekretnine = (DropDownList)DetailsViewNekretnine.FindControl("DropDownListIdTipNekretnine");
            //DropDownList listaIdTipNekretnineEdit = (DropDownList)DetailsViewNekretnine.FindControl("DropDownListIdTipNekretnineEdit");
            
            if (labelaIdTipNekretnine != null && listaIdTipNekretnine!=null)
            {
                listaIdTipNekretnine.ClearSelection();
                listaIdTipNekretnine.Items.FindByValue(labelaIdTipNekretnine.Text).Selected = true;
                TextBox TextIdTipNekretnine = (TextBox)DetailsViewNekretnine.FindControl("TextBoxTipNekretnine");

            }
        }

        protected void DropDownListIdTipNekretnine_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            DropDownList listaIdTipNekretnine = (DropDownList)DetailsViewNekretnine.FindControl("DropDownListIdTipNekretnine");
            TextBox labelaIdTipNekretnine = (TextBox)DetailsViewNekretnine.FindControl("TextBoxTipNekretnine");
            labelaIdTipNekretnine.Text = listaIdTipNekretnine.SelectedIndex.ToString();
        }
    }
}
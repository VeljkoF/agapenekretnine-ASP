using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wsagapenekretnine.admin
{
    public partial class adminSlajder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
            {
                Response.Redirect("~/pocetna.aspx");
            }
        }

        protected void GridViewSlajder_SelectedIndexChanged(object sender, EventArgs e)
        {
            DetailsViewSlajder.PageIndex = GridViewSlajder.SelectedIndex;
        }

        protected void GridViewSlajder_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Image staraSlika = (Image)GridViewSlajder.Rows[e.RowIndex].FindControl("Slika");
            string staraPutanja = staraSlika.ImageUrl;
            FileInfo podaciOfajlu = new FileInfo(Server.MapPath(staraPutanja));
            if (podaciOfajlu.Exists)
            {
                File.Delete(Server.MapPath(staraPutanja));
            }
        }

        protected void GridViewSlajder_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string uploadFolder = Server.MapPath("~/images/slajder/");
            FileUpload novaSlika = (FileUpload)GridViewSlajder.Rows[e.RowIndex].FindControl("FileUploadEditSlika");
            Image staraSlika = (Image)GridViewSlajder.Rows[e.RowIndex].FindControl("Slika");
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
                novaSlika.SaveAs(Server.MapPath("~/images/slajder/" + promenjenoIme));

                e.NewValues["PutanjaSlikeSlajder"] = "~/images/slajder/" + promenjenoIme;
            }
            else
            {
                e.NewValues["PutanjaSlikeSlajder"] = staraSlika.ImageUrl;
            }
        }

        protected void GridViewSlajder_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewSlajder.EditIndex = e.NewEditIndex;
        }

        protected void DetailsViewSlajder_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            Admin masterOstaloSablon = (Admin)this.Master;

            string uploadFolder = Server.MapPath("~/images/slajder/");
            FileUpload novaSlika = (FileUpload)DetailsViewSlajder.FindControl("FileUploadInsertSlika");
            if (novaSlika != null && novaSlika.HasFile)
            {
                string fileName = novaSlika.PostedFile.FileName;
                string promenjenoIme = String.Format("{0}_{1}", DateTime.Now.ToString("ddMMyyyy"), fileName);
                novaSlika.SaveAs(Server.MapPath("~/images/slajder/" + promenjenoIme));

                e.Values["PutanjaSlikeSlajder"] = "~/images/slajder/" + promenjenoIme;
            }
            else
            {
                masterOstaloSablon.ispisPoruke("Niste odabrali sliku za dodavanje!", "alert-danger");
            }
        }
    }
}
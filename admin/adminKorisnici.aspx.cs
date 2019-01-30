using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wsagapenekretnine.admin
{
    public partial class adminKorisnici : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] == null)
            {
                Response.Redirect("~/pocetna.aspx");
            }
        }


        protected void GridViewKorisnici_SelectedIndexChanged(object sender, EventArgs e)
        {
            DetailsViewKorisnici.PageIndex = GridViewKorisnici.SelectedIndex;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wsagapenekretnine
{
    public partial class kontakt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                Response.Redirect("~/admin/adminNekretnine.aspx");
            }
        }

        protected void btnPosalji_Click(object sender, EventArgs e)
        {
            podaci.InnerHtml = "";
            string imePrezime = TextBoxIme.Text;
            string mail = TextBoxMail.Text;
            string naslov = TextBoxNaslov.Text;
            string poruka = TextBoxPoruka.Text;

            podaci.InnerHtml = "Vaše ime i prezime: " + imePrezime + ".<br/>Vaš mail: " + mail + ".<br/>Naslov poruke: " + naslov + ".<br/>Poruka: " + poruka + ". "; 
        }
    }
}
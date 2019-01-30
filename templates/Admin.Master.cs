using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wsagapenekretnine
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Meni();
            }
            Page.Title += " | Agape, Agencija za nakretnine, Beograd";
        }

        public void Meni()
        {
            SqlConnection konekcija = new SqlConnection();
            konekcija.ConnectionString = ConfigurationManager.ConnectionStrings["KonekcijaSaBazom"].ToString();
            konekcija.Open();
            DataSet ds = new DataSet();
            DataTable dt = new DataTable();
            string upitMeni = "SELECT * FROM Meni";
            SqlDataAdapter da = new SqlDataAdapter(upitMeni, konekcija);
            da.Fill(ds);
            dt = ds.Tables[0];
            DataRow[] drow = dt.Select("Admin=" + 1);

            foreach (DataRow dr in drow)
            {

                MenuAdmin.Items.Add(new MenuItem(dr["NazivMeni"].ToString(), dr["IdMeni"].ToString(), "", dr["PutanjaMeni"].ToString()));
                MenuFooter.Style["float"] = "left";
                MenuFooter.Items.Add(new MenuItem(dr["NazivMeni"].ToString(), dr["IdMeni"].ToString(), "", dr["PutanjaMeni"].ToString()));
            }
        }
        public void ispisPoruke(string poruka, string cssKlasa)
        {
            this.poruka.InnerHtml = poruka;
            this.poruka.Attributes["class"] = cssKlasa;
        }
    }
}
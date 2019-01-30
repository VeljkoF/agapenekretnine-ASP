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
    public partial class Pocetna : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Meni();
            }

            Page.Title += " | Agape, Agencija za nakretnine, Beograd";

            if (!IsPostBack)
            {
                GetImagesSlajder();
                GetNekretnine();
            }
        }

        private void GetNekretnine()
        {
            string konekcijaString = ConfigurationManager.ConnectionStrings["KonekcijaSaBazom"].ToString();
            using (SqlConnection kon = new SqlConnection(konekcijaString))
            {
                SqlCommand kom = new SqlCommand("spSelectNekretnineTipNekretnine", kon);
                kom.CommandType = CommandType.StoredProcedure;

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(kom);

                kon.Open();

                da.Fill(dt);
                if (dt.Rows.Count > 0 && dt.Rows[0][0] != string.Empty)
                {
                    RepeaterNekretnineTipNekretnine.DataSource = dt;
                    RepeaterNekretnineTipNekretnine.DataBind();
                }

                else
                {
                    RepeaterNekretnineTipNekretnine.DataSource = null;
                    RepeaterNekretnineTipNekretnine.DataBind();
                }
            }
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
            DataRow[] drow = dt.Select("Posetilac=" + 1);

            foreach (DataRow dr in drow)
            {

                MenuPocetna.Items.Add(new MenuItem(dr["NazivMeni"].ToString(), dr["IdMeni"].ToString(), "", dr["PutanjaMeni"].ToString()));
                MenuFooter.Style["float"] = "left";
                MenuFooter.Items.Add(new MenuItem(dr["NazivMeni"].ToString(), dr["IdMeni"].ToString(), "", dr["PutanjaMeni"].ToString()));
            }
        }
        //public void ispisPoruke(string poruka, string cssKlasa)
        //{
        //    this.poruka.InnerHtml = poruka;
        //    this.poruka.Attributes["class"] = cssKlasa;
        //}


        public void GetImagesSlajder()
        {
            string konekcijaString = ConfigurationManager.ConnectionStrings["KonekcijaSaBazom"].ToString();
            using (SqlConnection kon = new SqlConnection(konekcijaString))
            {
                string querySlike = "SELECT * FROM Slajder";
                SqlCommand kom = new SqlCommand(querySlike, kon);
                DataTable dt = new DataTable();

                SqlDataAdapter da = new SqlDataAdapter(kom);

                kon.Open();

                da.Fill(dt);
                if (dt.Rows.Count > 0 && dt.Rows[0][0] != string.Empty)
                {
                    RepeaterSlajder.DataSource = dt;
                    RepeaterSlajder.DataBind();
                }

                else
                {
                    RepeaterSlajder.DataSource = null;
                    RepeaterSlajder.DataBind();
                }


            }
        }
    }
}
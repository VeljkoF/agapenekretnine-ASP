using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace wsagapenekretnine
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                Response.Redirect("~/admin/adminNekretnine.aspx");
            }
        }

        protected void btnPrijava_Click(object sender, EventArgs e)
        {
            Ostalo masterOstaloSablon = (Ostalo)this.Master;

            string email = this.tbEmail.Text;
            string lozinka = this.tbLozinka.Text;

            string konekcijaString = WebConfigurationManager.ConnectionStrings["KonekcijaSaBazom"].ConnectionString;
            //string queryLogin = "select * from Korisnici where EmailKorisnika = @EmailKorisnika and LozinkaKorisnika = @LozinkaKorisnika";

            SqlConnection kon = new SqlConnection(konekcijaString);
            SqlCommand kom = new SqlCommand("spSelectKorisniciLogin");
            kom.CommandType = CommandType.StoredProcedure;
            kom.Parameters.AddWithValue("@EmailKorisnika", email);
            kom.Parameters.AddWithValue("@LozinkaKorisnika", lozinka);

            kom.Connection = kon;

            try
            {
                kom.Connection.Open();

                SqlDataReader reader = kom.ExecuteReader();
                if (reader.Read())
                {
                    Session["Id"] = (int)reader["IdKorisnika"];
                    Session["Email"] = reader["EmailKorisnika"] as string;

                    Response.Redirect("admin/adminNekretnine.aspx");
                    masterOstaloSablon.ispisPoruke(String.Format("Uspesno ste prijavili!"), "alert-success");

                }
                else
                {
                    masterOstaloSablon.ispisPoruke("Pogresan unos emaila i lozinke!", "alert-danger");
                }
            }
            catch (Exception ex) 
            {
                masterOstaloSablon.ispisPoruke(ex.Message, "alert-danger");
            }
            finally
            {
                kom.Connection.Close();
            }
        }
    }
}
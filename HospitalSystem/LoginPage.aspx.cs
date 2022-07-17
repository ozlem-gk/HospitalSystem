using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HospitalSystem
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', 'You clicked the button!', 'success')", true);

        }



        protected void giris_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection baglanti = new MySqlConnection(connectionString);

            try
            {
                baglanti.Open();
                string sql = "SELECT * FROM `giris` WHERE ad =@adi AND sifre =@sifresi";
                MySqlParameter prm1 = new MySqlParameter("adi", txt_ad.Text.Trim());
                MySqlParameter prm2 = new MySqlParameter("sifresi", txt_sifre.Text.Trim());
                MySqlCommand komut = new MySqlCommand(sql, baglanti);
                komut.Parameters.Add(prm1);
                komut.Parameters.Add(prm2);
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(komut);
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {

                    System.Threading.Thread.Sleep(5000);

                    Response.Redirect("KayitSayfasi.aspx");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Giriş Yapılamadı!', 'Birdaha deneyiniz!', 'success')", true);

                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Giriş Yapılamadı!', 'Birdaha deneyiniz!', 'error')", true);

                }
            }
            catch (Exception)
            {
                
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Good job!', 'You clicked the button!', 'success')", true);

            }
        }
    }
}
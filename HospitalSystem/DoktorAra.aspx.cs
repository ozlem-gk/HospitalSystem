using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HospitalSystem
{
    public partial class DoktorAra : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void doktor_bul_Click(object sender, EventArgs e)
        {
            doktorbul();
        }
        private void doktorbul()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            MySqlCommand comm = new MySqlCommand("SELECT * FROM doktor WHERE ad ='" + txt_aranandoktor.Text + "'", conn);
            try
            {
                //Bağlantımı açıyorum, dataReader nesnemi çalıştırıyorum ve GridView kontrolüme DataBind işlemi yapıyorum.
                conn.Open();
                reader = comm.ExecuteReader();
                grd_doktor.DataSource = reader;
                grd_doktor.DataBind();
                //Reader nesnemi kapatıyorum
                reader.Close();
            }
            //hata olursa vereceğim mesaj
            catch
            {
                Response.Write("Bir hata oluştu");
            }
            //Bağlantımı kapatıyorum
            finally
            {
                conn.Close();
            }


        }
    }
}
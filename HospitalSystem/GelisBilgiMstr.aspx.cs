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
    public partial class GelisBilgiMstr : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gelis_Click(object sender, EventArgs e)
        {
            kayit();
        }
        private void kayit()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            //Bağlantı satırımı ConfigurationManager sınıfı ile web config dosyasından atamış olduğum isimle çekiyorum.
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            //SQL queryimi yazıyorum. Employees tablosundan çekmek istediğim verileri SELECT ile çekiyorum.
            MySqlCommand comm = new MySqlCommand("SELECT `id`, `gelis_tarihi`, `hasta_bilgi_id`, `servis_id`, `doktor_id` FROM `gelis_bilgisi` WHERE 1", conn);
            try
            {
                //Bağlantımı açıyorum, dataReader nesnemi çalıştırıyorum ve GridView kontrolüme DataBind işlemi yapıyorum.
                conn.Open();
                reader = comm.ExecuteReader();
                grd_girisbilgi_tablo.DataSource = reader;
                grd_girisbilgi_tablo.DataBind();
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
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace HospitalSystem
{
    public partial class Defaultt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //MySqlConnection baglanti = new MySqlConnection(@"server=localhost;user id=root;port=3306;database=hospital");
            //baglanti.Open();
            //MySql.Data.MySqlClient.MySqlCommand sqlcmd = new MySqlCommand("INSERT INTO hasta_bilgi (`ad`, `soyad`, `tc_no`, `dogum_tarihi`) VALUES ('" + ad_txt.Text + "','" + soyad_txt.Text + "','" + tc_txt.Text + "','" + dogumtarihi_txt.Text + "')", baglanti);
            //MySqlDataReader dr = sqlcmd.ExecuteReader();
            //sqlcmd.ExecuteNonQuery();
            //baglanti.Close();


            veriBagla();
            gelisbilgi();

        }
        protected void login_page_Click(object sender, EventArgs e)
        {
            Response.Redirect("GirisSayfasi.aspx");
        }

        private void veriBagla()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            MySqlCommand comm = new MySqlCommand("SELECT `id`, `ad`, `soyad`, `tc_no`, `dogum_tarihi` FROM hasta_bilgi WHERE 1", conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                GridView2.DataSource = reader;
                GridView2.DataBind();
                
                reader.Close();
            }
           
            catch
            {
                Response.Write("Bir hata oluştu");
            }
            
            finally
            {
                conn.Close();
            }


        }
        private void gelisbilgi()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            //Bağlantı satırımı ConfigurationManager sınıfı ile web config dosyasından atamış olduğum isimle çekiyorum.
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            //SQL queryimi yazıyorum. Employees tablosundan çekmek istediğim verileri SELECT ile çekiyorum.
            MySqlCommand comm = new MySqlCommand("SELECT `id`, `gelis_tarihi`, `sikayet`, `tani`, `hasta_bilgi_id`, `servis_id`, `doktor_id` FROM `gelis_bilgisi` WHERE 1", conn);
            try
            {
                //Bağlantımı açıyorum, dataReader nesnemi çalıştırıyorum ve GridView kontrolüme DataBind işlemi yapıyorum.
                conn.Open();
                reader = comm.ExecuteReader();
                GridView3.DataSource = reader;
                GridView3.DataBind();
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
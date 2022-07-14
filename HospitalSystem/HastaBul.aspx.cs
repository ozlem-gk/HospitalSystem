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
    public partial class HastaBul : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

       

        protected void hasta_bul_Click(object sender, EventArgs e)
        {


            veribul();
              

            
        }
        private void veribul()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            MySqlCommand comm = new MySqlCommand("SELECT * FROM hasta_bilgi WHERE ad ='"+txt_aranan.Text+"'", conn);
            try
            {
                //Bağlantımı açıyorum, dataReader nesnemi çalıştırıyorum ve GridView kontrolüme DataBind işlemi yapıyorum.
                conn.Open();
                reader = comm.ExecuteReader();
                GridView4.DataSource = reader;
                GridView4.DataBind();
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
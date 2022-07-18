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
    public partial class VitalBulgu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ates_Click(object sender, EventArgs e)
        {
            atesBaglanti();
        }

        protected void btn_nabiz_Click(object sender, EventArgs e)
        {
            nabizBaglanti();
        }

        protected void btn_solunum_Click(object sender, EventArgs e)
        {
            solunumBaglanti();
        }

        protected void btn_tansiyon_Click(object sender, EventArgs e)
        {
            tansiyonBaglanti();
        }

        protected void txt_kan_Click(object sender, EventArgs e)
        {
            kanBaglanti();
        }
        private void atesBaglanti()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            MySqlCommand comm = new MySqlCommand("SELECT `id`, `sonuc`, `alt_sinir`, `ust_sinir`, `tarih` FROM `ates` WHERE 1", conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                GrdAtes.DataSource = reader;
                GrdAtes.DataBind();

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

        private void nabizBaglanti()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            MySqlCommand comm = new MySqlCommand("SELECT `id`, `sonuc`, `alt_sinir`, `ust_sinir`, `tarih` FROM `nabız` WHERE 1", conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                GrdNabiz.DataSource = reader;
                GrdNabiz.DataBind();

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

        private void solunumBaglanti()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            MySqlCommand comm = new MySqlCommand("SELECT `id`, `sonuc`, `alt_sinir`, `ust_sinir`, `tarih` FROM `solunum` WHERE 1", conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                GrdSolunum.DataSource = reader;
                GrdSolunum.DataBind();

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

        private void tansiyonBaglanti()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            MySqlCommand comm = new MySqlCommand("SELECT `sonuc`, `tarih` FROM `tansiyon` WHERE 1", conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                GrdTansiyon.DataSource = reader;
                GrdTansiyon.DataBind();

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

        private void kanBaglanti()
        {
            //SQL bağlantımı, komutumu ve datareader nesnemi tanımlıyorum.


            MySqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connectionString);

            MySqlCommand comm = new MySqlCommand("SELECT `id`, `sonuc`, `alt_sinir`, `ust_sinir`, `tarih` FROM `kan_sekeri` WHERE 1", conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                GrdKan.DataSource = reader;
                GrdKan.DataBind();

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
    }
}
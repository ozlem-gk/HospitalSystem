using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HospitalSystem
{
    public partial class RegisterPage : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_gelisbilgisi_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_kayit_Click(object sender, EventArgs e)
        {
           
            MySqlConnection baglanti = new MySqlConnection(@"server=localhost;user id=root;port=3306;database=hospital");
            baglanti.Open();
            MySql.Data.MySqlClient.MySqlCommand sqlcmd = new MySqlCommand("INSERT INTO hasta_bilgi (`ad`, `soyad`, `tc_no`, `dogum_tarihi`) VALUES ('"+ad_txt.Text+"','"+soyad_txt.Text+"','"+tc_txt.Text+"','"+dogumtarihi_txt.Text+"')",baglanti);
            //MySqlDataReader dr = sqlcmd.ExecuteReader();
            sqlcmd.ExecuteNonQuery();
            baglanti.Close();
        }
    }
}
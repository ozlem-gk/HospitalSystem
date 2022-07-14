using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;

namespace DataBases
{
    public class DataAccess
    {
        MySqlConnection baglanti = new MySqlConnection(@"server=localhost;user id=root;port=3306;database=hospital");

        MySqlCommand komut = new MySqlCommand();
        MySqlDataReader dr;
    }
}

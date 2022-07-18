using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HospitalSystem.Grafikler
{
    public partial class GrafikNabiz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                GetChartDataAtes();
                GetChartTypesAtes();
                GetChartData();
                GetChartTypes();
                
            
        }
        private void GetChartTypes()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString());
                ddlChartNabiz.Items.Add(li);
                
            }
        }
        private void GetChartTypesAtes()
        {
            foreach (int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString());
                ddlChartAtes.Items.Add(li); 

            }
        }
        private void GetChartData()
        {
            string CS = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(CS))
            {
                MySqlCommand cmd = new MySqlCommand("grafik_nabız", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                MySqlDataReader rdr = cmd.ExecuteReader();
                // Retrieve the Series to which we want to add DataPoints  
                Series series = Chart1.Series["Series1"];
                // Loop thru each Student record  
                while (rdr.Read())
                {
                    // Add X and Y values using AddXY() method  
                    series.Points.AddXY(rdr["tarih"].ToString(),
                    rdr["sonuc"]);
                }
            }
        }
        private void GetChartDataAtes()
        {
            string CS = ConfigurationManager.ConnectionStrings["hospitalConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(CS))
            {
                MySqlCommand cmd = new MySqlCommand("grafik_ates", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                MySqlDataReader rdr = cmd.ExecuteReader();
                // Retrieve the Series to which we want to add DataPoints  
                Series series = Chart2.Series["Series1"];
                // Loop thru each Student record  
                while (rdr.Read())
                {
                    // Add X and Y values using AddXY() method  
                    series.Points.AddXY(rdr["tarih"].ToString(),
                    rdr["sonuc"]);
                }
            }
        }
        protected void ddlChartNabiz_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartData();
            this.Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), ddlChartNabiz.SelectedValue);
        }

        protected void ddlChartAtes_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetChartDataAtes();
            this.Chart2.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), ddlChartAtes.SelectedValue);
        }
    }
}
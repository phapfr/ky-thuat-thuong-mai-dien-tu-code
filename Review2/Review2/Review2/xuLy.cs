using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Review2
{
    public class xuLy : System.Web.UI.Page
    {
        SqlConnection conn;

        public void ketNoi()
        {
            string path = Page.Server.MapPath("App_data");
            path += "\\Database1.mdf";
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True");
            conn.Open();
        }

        private void dongKetNoi()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
        }

        public DataTable getData(string q)
        {
            DataTable dt = new DataTable();

            try
            {
                ketNoi();
                SqlDataAdapter adap = new SqlDataAdapter(q, conn);
                adap.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongKetNoi();
            }
            return dt;
        }
    }
}
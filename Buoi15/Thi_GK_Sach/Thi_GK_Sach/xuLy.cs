using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Thi_GK_Sach
{
    public class xuLy : System.Web.UI.Page
    {
        SqlConnection conn;
        public void ketnoi()
        {
            string path = Page.Server.MapPath("App_data");
            path += "\\Database1.mdf";
            conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True");
            conn.Open();
        }
        //đóng kết nối
        private void dongketnoi()
        {
            if (conn.State == ConnectionState.Open) //nếu kết nối đang mở
                conn.Close();
        }
        public DataTable getData(string q)
        {
            DataTable dt = new DataTable();
            try
            {
                ketnoi();
                SqlDataAdapter adap = new SqlDataAdapter(q, conn);
                adap.Fill(dt);
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt;
        }
    }
}
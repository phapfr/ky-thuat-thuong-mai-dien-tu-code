using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Lab2_CSDL
{
    public partial class MatHang : System.Web.UI.Page
    {
        string conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phapn\Downloads\Kỹ Thuật Thương Mại Điện Tử\Kỹ Thuật Thương Mại Điện Tử - Code\Buoi10\Lab2_CSDL\Lab2_CSDL\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            String maloai = Context.Items["ml"].ToString();
            SqlConnection con = new SqlConnection(conn);
            try
            {
                con.Open();
                string query = "select * from MatHang where MaLoai='" + maloai + "'";
                SqlCommand command = new SqlCommand(query, con);
                SqlDataReader reader = command.ExecuteReader();
                this.GridView1.DataSource = reader;
                this.GridView1.DataBind();
            }

            catch(SqlException err)
            {
                Response.Write("<b>Lỗi</b>" + err.Message + "<p/>");
            }
            finally { con.Close(); }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
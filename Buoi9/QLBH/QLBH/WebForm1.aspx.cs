using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; 
using System.Data;

namespace QLBH
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //khai báo chuỗi kết nối
        string conn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phapn\Downloads\Kỹ Thuật Thương Mại Điện Tử\Kỹ Thuật Thương Mại Điện Tử - Code\Buoi9\QLBH\QLBH\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string st1 = "select * from LoaiHang";
            try {
                SqlDataAdapter da = new SqlDataAdapter(st1, conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DropDownList1.DataSource = dt;
                this.DropDownList1.DataTextField = "TenLoai";
                this.DropDownList1.DataValueField = "MaLoai";
                this.DropDownList1.DataBind();
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
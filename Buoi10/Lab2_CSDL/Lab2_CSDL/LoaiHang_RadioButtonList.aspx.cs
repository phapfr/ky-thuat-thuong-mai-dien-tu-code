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
    public partial class LoaiHang_RadioButtonList : System.Web.UI.Page
    {
        string cnn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phapn\Downloads\Kỹ Thuật Thương Mại Điện Tử\Kỹ Thuật Thương Mại Điện Tử - Code\Buoi10\Lab2_CSDL\Lab2_CSDL\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return; //load lại trang khi trang chưa được load
            string q1 = "select * from LoaiHang";
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(q1, cnn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.RadioButtonList1.DataSource = dt;
                this.RadioButtonList1.DataTextField = "TenLoai";
                this.RadioButtonList1.DataValueField = "MaLoai";
                this.RadioButtonList1.DataBind();
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            String MaLoai = this.RadioButtonList1.SelectedItem.Value;
            Context.Items["ml"] = MaLoai;
            Server.Transfer("MatHang.aspx");
        }
    }
}
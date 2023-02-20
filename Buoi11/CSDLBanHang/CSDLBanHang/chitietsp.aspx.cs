using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CSDLBanHang
{
    public partial class chitietsp : System.Web.UI.Page
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phapn\Downloads\Kỹ Thuật Thương Mại Điện Tử\Kỹ Thuật Thương Mại Điện Tử - Code\Buoi11\CSDLBanHang\CSDLBanHang\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if (Context.Items["mh"] == null)
            {
                q = "select * from MatHang";
            }
            else
            {
                string mahang = Context.Items["mh"].ToString();
                q = "select * from MatHang where MaHang ='" + mahang + "'";
            }
            try
            {
                SqlDataAdapter da = new SqlDataAdapter(q, stcn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.DataList2.DataSource = dt;
                this.DataList2.DataBind();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button mua = (Button)sender;
            string mahang = mua.CommandArgument.ToString(); //lấy biến Argument ở button
            DataListItem item = (DataListItem)mua.Parent;
            string soluong = ((TextBox)item.FindControl("TextBox1")).Text;
            if (Request.Cookies["TenDangNhap"] == null) return; //nếu chưa đăng nhập thì ko làm gì cả
            string ten = Request.Cookies["TenDangNhap"].Value;
            SqlConnection con = new SqlConnection(stcn);
            con.Open();
            string query = "select * from DonHang "
                + " where TenDangNhap = '" + ten + "' and MaHang = '" + mahang + "'";
            SqlCommand command = new SqlCommand(query, con);
            SqlDataReader reader = command.ExecuteReader(); //thực thi câu lệnh sql
            if (reader.Read())
            {
                reader.Close();
                command = new SqlCommand(
                    "update DonHang set SoLuong=SoLuong+" + soluong
                    + " where TenDangNhap = '" + ten + "' and MaHang = '" + mahang + "'", con);
            }
            else
            {
                reader.Close();
                command = new SqlCommand("insert into DonHang "
                    + "(TenDangNhap, MaHang, SoLuong) values('"
                    + ten + "', '" + mahang + "', " + soluong + ")", con);
            }
            command.ExecuteNonQuery();
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Server.Transfer("giohang.aspx");
        }
    }
}
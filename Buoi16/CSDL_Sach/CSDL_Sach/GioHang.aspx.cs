﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CSDL_Sach
{
    public partial class GioHang : System.Web.UI.Page
    {
        string stcn = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\phapn\Downloads\Kỹ Thuật Thương Mại Điện Tử\Kỹ Thuật Thương Mại Điện Tử - Code\Buoi16\CSDL_Sach\CSDL_Sach\App_Data\Database1.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string q = "select DonHang.MaSach, TenSach, MoTa, Hinh, DonGia, SoLuong,"
                    + "SoLuong*DonGia as ThanhTien from DonHang, Sach "
                    + " where Sach.MaSach = DonHang.MaSach";
                SqlDataAdapter da = new SqlDataAdapter(q, stcn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                this.GridView1.DataSource = dt;
                this.GridView1.DataBind();
                // tính tổng thành tiền: duyệt dataTable
                double tong = 0;
                foreach (DataRow row in dt.Rows)
                {
                    double thanhtien = Convert.ToDouble(row["ThanhTien"]);
                    tong = tong + thanhtien;
                }
                this.Label1.Text = "Tổng thành tiền: " + tong + " đồng";
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}
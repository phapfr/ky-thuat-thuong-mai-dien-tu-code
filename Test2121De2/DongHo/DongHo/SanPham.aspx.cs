using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DongHo
{
    public partial class SanPham : System.Web.UI.Page
    {
        xuLy kn = new xuLy();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if(Context.Items["mnsx"] == null)
            {
                q = "select * from SanPham";
            }
            else
            {
                string mansx = Context.Items["mnsx"].ToString();
                q = "select * from SanPham where MaNhaSanXuat = '" + mansx + "'";
            }
            try
            {
                this.DataList1.DataSource = kn.getData(q);
                this.DataList1.DataBind();
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string masp = ((LinkButton)sender).CommandArgument;
            Context.Items["msp"] = masp;
            Server.Transfer("ChiTiet.aspx");
        }
    }
}
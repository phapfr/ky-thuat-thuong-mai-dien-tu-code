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
    public partial class ChiTiet : System.Web.UI.Page
    {
        xuLy kn = new xuLy();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            string q;
            if(Context.Items["msp"] == null)
            {
                q = "select * from SanPham";
            }
            else
            {
                string masp = Context.Items["msp"].ToString();
                q = "select * from SanPham where MaSanPham = '" + masp + "' ";
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
    }
}
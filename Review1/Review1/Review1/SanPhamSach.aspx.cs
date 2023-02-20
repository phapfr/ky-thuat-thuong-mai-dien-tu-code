using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Review1
{
    public partial class SanPhamSach : System.Web.UI.Page
    {
        xuLy kn = new xuLy();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;

            string q;
            if (Context.Items["mdm"] == null)
            {
                q = "select * from Sach";
            }
            else
            {
                string madanhmuc = Context.Items["mdm"].ToString();
                q = "select * from Sach where MaDanhMuc = '" + madanhmuc + "'";
            }

            try
            {
                this.DataList1.DataSource = kn.getData(q);
                this.DataList1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            string masach = ((LinkButton)sender).CommandArgument;
            Context.Items["ms"] = masach;
            Server.Transfer("ChiTietSach.aspx");
        }
    }
}
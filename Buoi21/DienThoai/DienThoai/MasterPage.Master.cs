using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DienThoai
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        xuLy kn = new xuLy();
        protected void Page_Load(object sender, EventArgs e)
        {
            string q = "select * from HangSanXuat";
            this.DataList1.DataSource = kn.GetData(q);
            this.DataList1.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string madt = ((LinkButton)sender).CommandArgument;
            Context.Items["madt"] = madt;
            Server.Transfer("SanPham.aspx");
        }
    }
}
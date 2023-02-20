using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Review2
{
    public partial class ChiTiet : System.Web.UI.Page
    {
        xuLy kn = new xuLy();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;

            string q;
            if(Context.Items["ms"] == null)
            {
                q = "select * from Sach";
            }
            else
            {
                string masach = Context.Items["ms"].ToString();
                q = "select * from Sach where MaSach = '"++"'";
            }

        }
    }
}
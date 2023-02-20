using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoiTuong
{
    public partial class ThanhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["User"] != null)
                lblThongBao.Text = "Xin chào " + Request.QueryString["User"].ToString();
        }
    }
}
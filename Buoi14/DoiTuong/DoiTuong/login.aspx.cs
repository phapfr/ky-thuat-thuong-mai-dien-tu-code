using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoiTuong
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            if(txtUser.Text.Trim().Length != 0 && txtPass.Text.Trim().Length != 0)
            {
                //chuyển trang, dạng QueryString ten=gia_tri
                Response.Redirect("~/ThanhVien.aspx?User=" + txtUser.Text +
                    "&Pass=" + txtPass.Text);

            }
            else
            {
                
            }
        }
    }
}
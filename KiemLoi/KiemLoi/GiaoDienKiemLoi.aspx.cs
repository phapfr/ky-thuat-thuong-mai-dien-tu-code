using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KiemLoi
{
    public partial class GiaoDienKiemLoi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            valNgaySinh.ValueToCompare = DateTime.Now.AddYears(-16).ToString("MM/dd/yy");
        }

        protected void btnKiemLoi_Click(object sender, EventArgs e)
        {

        }
    }
}
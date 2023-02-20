using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DoiTuong
{
    public partial class Chao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime t = DateTime.Now;
            string s = string.Format("Hôm nay ngày {0} tháng {1} năm {2}",
                t.Day, t.Month, t.Year);
            s += "<hr><h2>CHÀO MỪNG CÁC BẠN ĐẾN VỚI ABC.COM</h2>";

            lbl1.Text = s;
            ////xuất thông tin ra trình duyệt
            //Response.Write(s);
            //Response.End();//kết thúc đổ dữ liệu xuống trình duyệt
        }
    }
}
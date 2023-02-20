using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KiemLoi
{
    public partial class LoiCustomValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //sinh số ngẫu nhiên, hiển thị và lưu vào session
            Random r = new Random();
            Session["Captcha"] = lblMaBM.Text = r.Next(10000, 99999).ToString();
        }

        protected void btnKiemTra_Click(object sender, EventArgs e)
        {

        }

        protected void valCaptcha_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //kiểm tra mã nhập vào và số ngẫu nhiên đã lưu trong session trước đó
            args.IsValid = (args.Value == Session["Captcha"].ToString());
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KiemLoi
{
    public partial class Registry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegistry_Click(object sender, EventArgs e)
        {
            Context.Items["txtUsername"] = txtUsername.Text;
            Context.Items["txtPassword"] = txtPassword.Text;
            Context.Items["txtBirthdate"] = txtBirthdate.Text;
            Context.Items["DropGender"] = DropGender.Text;
            Context.Items["txtEmailAddress"] = txtEmailAddress.Text;
            Server.Transfer("RegistrySuccess.aspx");
        }
    }
}
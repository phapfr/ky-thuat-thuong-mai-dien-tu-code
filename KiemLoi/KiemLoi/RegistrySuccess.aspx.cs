using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KiemLoi
{
    public partial class RegistrySuccess : System.Web.UI.Page
    {
        protected string un;
        protected string pw;
        protected string bd;
        protected string gd;
        protected string ea;
        protected void Page_Load(object sender, EventArgs e)
        {
            un = (String)Context.Items["txtUsername"];
            pw = (String)Context.Items["txtPassword"];
            bd = (String)Context.Items["txtBirthdate"];
            gd = (String)Context.Items["DropGender"];
            ea = (String)Context.Items["txtEmailAddress"];

        }
    }
}
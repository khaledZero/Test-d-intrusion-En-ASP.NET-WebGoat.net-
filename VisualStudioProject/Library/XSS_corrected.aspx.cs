using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class XSS_corrected : System.Web.UI.Page
    {
        protected string result = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            result = TextBox1.Text;
        }
    }
}
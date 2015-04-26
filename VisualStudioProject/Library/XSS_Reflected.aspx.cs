using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class XSS_Refered : System.Web.UI.Page
    {
        protected string msg ="";
        protected void Page_Load(object sender, EventArgs e)
        {
            //test commit
        }

        protected void BtnConnect_Click(object sender, EventArgs e)
        {
            msg = TbxLogin.Text;
        }
    }
}
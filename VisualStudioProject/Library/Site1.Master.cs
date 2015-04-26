using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSQL_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SqlInjection.aspx");
        }

        protected void ButtonXSS_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/XSS_Reflected.aspx");
        }

        protected void ButtonXSS_stored_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/XSS_Stored.aspx");
        }

        protected void ButtonExpoDonnee_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ExpoDonneeSensible.aspx");
        }

        protected void BtnRDNSO_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/RDNSO.aspx");
        }

        protected void BtnControlAcces_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ControlAccesFonctionnel.aspx");
        }

        protected void BtnSqlInj2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sql_Injection2.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class profil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["InfosUsers"]; //recupération du cookie créé par la page du control d'acces

            if (cookie != null)
            {
                lblName.Text = cookie["login"];
                lblPrenom.Text = cookie["mdp"];
                lblStatut.Text = cookie["statut"];
                imgProfil.ImageUrl = cookie["photo"];
            }
            else
            {
                Response.Redirect("~/ControlAccesFonctionnel.aspx");
            }
        }

        protected void btnDeconnect_Click(object sender, EventArgs e)
        {
            if (HttpContext.Current.Request.Cookies["InfosUsers"] != null)
            {
                HttpCookie myCookie = HttpContext.Current.Request.Cookies["InfosUsers"];
                myCookie.Expires = DateTime.Now.AddDays(-2);
                HttpContext.Current.Response.Cookies.Add(myCookie);

            }
            Response.Redirect("~/ControlAccesFonctionnel.aspx");
        }
    }
}
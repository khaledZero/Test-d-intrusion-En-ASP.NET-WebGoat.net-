using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class ControlAccesFonctionnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnect_Click(object sender, EventArgs e)
        {
            if (tbLogin.Text != "" && tbMdop.Text != "")
            {
                lblErreur.Text = "";
                //connection BDD
                SqlConnection conn = new ConnectionBD().seConnecter();
                conn.Open();

                string commandText = "SELECT * FROM Users " + "WHERE user_Name=@login AND User_Pwd = @mdp";
                SqlCommand cmd = new SqlCommand(commandText, conn);
                cmd.Parameters.AddWithValue("@login", tbLogin.Text);
                cmd.Parameters.AddWithValue("@mdp", tbMdop.Text);

                SqlDataReader sqlDR = null;
                try
                {
                    sqlDR = cmd.ExecuteReader();
                }
                catch (Exception )
                {
                    lblErreur.Text = "Erreur du format de la requette !!!";
                }
                if (sqlDR != null)
                {
                    if (sqlDR.Read())
                    {
                        string nom = sqlDR.GetString(sqlDR.GetOrdinal("user_Name"));
                        string prenom = sqlDR.GetString(sqlDR.GetOrdinal("User_Pwd"));
                        string statut = sqlDR.GetString(sqlDR.GetOrdinal("statut"));
                        string lienPhoto = sqlDR.GetString(sqlDR.GetOrdinal("photoLink"));

                        HttpCookie cookie = new HttpCookie("InfosUsers"); //Utilisation des cookies
                        cookie["login"] = nom;
                        cookie["mdp"] = prenom;
                        cookie["statut"] = statut;
                        cookie["photo"] = lienPhoto;

                        cookie.Expires = DateTime.Now.AddDays(15);   //la cookie va etre garder sur l'ordi pendant 15 jours 

                        Response.Cookies.Add(cookie); //Ajouter le cookie
                        
                        //redirection vers la page d'affichage du profil correspondant
                        Response.Redirect("~/profil.aspx");
                    }
                    else
                    {
                        Response.Redirect("~/ControlAccesFonctionnel.aspx"); ;
                    }
                }
            }
            else
            {
                lblErreur.Text = "Veuillez remplir les champs!!!";
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class RDNSO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TBlogin.Text != "" && TBpassword.Text != "")
            {
                //connection BDD
                SqlConnection conn = new ConnectionBD().seConnecter();
                conn.Open();

                string commandText = "SELECT * FROM Users " + "WHERE user_Name=@login AND User_Pwd = @mdp";
                SqlCommand cmd = new SqlCommand(commandText, conn);
                cmd.Parameters.AddWithValue("@login", TBlogin.Text);
                cmd.Parameters.AddWithValue("@mdp", TBpassword.Text);

                SqlDataReader sqlDR = null;
                try
                {
                    sqlDR = cmd.ExecuteReader();
                }
                catch (Exception )
                {
                    Response.Redirect("~/RDNSO.aspx"); 
                }
                if (sqlDR != null)
                {
                    if (sqlDR.Read())
                    {
                        int id = sqlDR.GetInt32(sqlDR.GetOrdinal("user_ID"));
                        Session["id"] = id;

                        //redirection vers la page d'affichage du profil
                        Response.Redirect(string.Format("~/RDNSO_profile.aspx?id={0}", id));
                    }
                    else
                    {
                        Response.Redirect("~/RDNSO.aspx"); 
                    }
                }
            }
            else
            {
                Response.Redirect("~/RDNSO.aspx"); ;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class CSRF_file : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["id"] != null && Request.QueryString["id"] != null)
            {
                string id = Request.QueryString["id"];                

                //connection BDD
                SqlConnection conn = new ConnectionBD().seConnecter();
                conn.Open();

                string commandText = "SELECT * FROM Users " + "WHERE user_ID = @id";
                SqlCommand cmd = new SqlCommand(commandText, conn);
                cmd.Parameters.AddWithValue("@id", id);

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
                        try
                        {
                            LbName.Text = sqlDR.GetString(sqlDR.GetOrdinal("user_Name"));
                            LbPrenom.Text = sqlDR.GetString(sqlDR.GetOrdinal("user_Name"));
                            LbStatut.Text = sqlDR.GetString(sqlDR.GetOrdinal("statut"));
                            Image.ImageUrl = sqlDR.GetString(sqlDR.GetOrdinal("photoLink"));
                        }
                        catch (Exception)
                        {
                            Response.Redirect(string.Format("~/RDNSO_profile.aspx?id={0}", Session["id"]));                            
                        }
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
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class SqlInjectionCorrected : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlConnection conn = new ConnectionBD().seConnecter();
                conn.Open();

                string commandText = "SELECT * FROM Users " + "WHERE User_Name=@login";
                SqlCommand cmd = new SqlCommand(commandText, conn);
                cmd.Parameters.AddWithValue("@login", TextBox1.Text);

                SqlDataReader sqlDR = null;
                
                try
                {
                    sqlDR = cmd.ExecuteReader();
                }
                catch (Exception )
                {
                    MSG_result.Text = "Vous etes un pirate? perte de temps !!!";
                }

                if (sqlDR != null)
                {
                    if (sqlDR.Read())
                    {
                        MSG_result.Text = "Vous êtres bien identtifié!";
                        //MSG_result.Text = "";
                    }
                    else
                    {
                        MSG_result.Text = "Vous n'êtes pas identifié";
                        //LblSucces.Text = "";
                    }
                }
                else
                {
                    MSG_result.Text = "";
                }
            }
        }
        
    }
}
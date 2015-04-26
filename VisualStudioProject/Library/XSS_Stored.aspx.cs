using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Library
{
    public partial class XSS_Stored : System.Web.UI.Page
    {
        protected string recpmsg = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlConnection conn = new ConnectionBD().seConnecter();
                conn.Open();

                string message = TextBox2.Text;
                Console.WriteLine("message : " + message);
                string cmdString = "Update Users Set msg = ' " + message + "' where user_Name = '" + TextBox1.Text + "'";

                SqlCommand cmd = new SqlCommand(cmdString, conn);
                SqlDataReader sqlDR = null;
                try
                {
                    sqlDR = cmd.ExecuteReader();
                }
                catch (Exception ex)
                {
                    Label1.Text = "Erreur du format de la requette !!!: " + ex.ToString();
                }

                if (sqlDR != null)
                {
                    if (sqlDR.Read())
                    {
                        Label1.Text = "veuillez passer a la deuxieme etape!";
                    }


                }
                else
                {
                    Label1.Text = "Erreur du format de la requette !!!";
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                SqlConnection conn = new ConnectionBD().seConnecter();
                conn.Open();

                string cmdString = "Select msg from Users where user_Name = '" + TextBox3.Text + "'";

                SqlCommand cmd = new SqlCommand(cmdString, conn);
                SqlDataReader sqlDR = null;
                try
                {
                    sqlDR = cmd.ExecuteReader();
                }
                catch (Exception )
                {
                    Label1.Text = "Erreur du format de la requette !!!";
                }

                if (sqlDR != null)
                {
                    if (sqlDR.Read())
                    {
                        recpmsg = sqlDR.GetString(sqlDR.GetOrdinal("msg"));
                    }


                }
                else
                {
                    Label1.Text = "Erreur du format de la requette !!!";
                }
            }

        }
    }
}
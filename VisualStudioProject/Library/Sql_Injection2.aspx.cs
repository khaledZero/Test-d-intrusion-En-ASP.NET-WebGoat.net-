using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class Sql_Injection2 : System.Web.UI.Page
    {
        protected string mabase = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnConnect_Click(object sender, EventArgs e)
        {
            if (TbxLogin.Text != "")
            {
                SqlConnection conn = new ConnectionBD().seConnecter();
                conn.Open();

                string cmdString = "Select distinct * FROM Users WHERE User_Name = '" + TbxLogin.Text + "'";

                SqlCommand cmd = new SqlCommand(cmdString, conn);
                SqlDataReader sqlDR = null;
                try
                {
                    sqlDR = cmd.ExecuteReader();
                }
                catch (Exception )
                {
                    LblErruer.Text = "Erreur du format de la requette !!!";
                }

                if (sqlDR != null)
                {
                    int count = sqlDR.FieldCount;
                    while (sqlDR.Read())
                    {
                        for (int i = 0; i < count; i++)
                        {
                            mabase += "&nbsp;&nbsp;&nbsp;" + sqlDR.GetName(i) + " =    " + sqlDR.GetValue(i);
                        }
                        mabase += "<br />";
                    }

                    LblErruer.Text = mabase;

                }
                else
                {
                    LblErruer.Text = "Erreur du format de la requette !!!";
                }
            }
        }
    }
}
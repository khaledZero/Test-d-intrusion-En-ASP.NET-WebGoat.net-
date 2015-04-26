using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Library
{
    public partial class SqlInjection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //AutoPostBackControl = true;
        }

        protected void BtnConnect_Click(object sender, EventArgs e)
        {
            if (TbxLogin.Text != "")
            {
                SqlConnection conn = new ConnectionBD().seConnecter();
                conn.Open();

                string cmdString = "Select * FROM Users WHERE User_Name = '" + TbxLogin.Text + "'";

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
                    if (sqlDR.Read())
                    {
                        LblSucces.Text = "Vous êtes bien identtifié!";
                        LblErruer.Text = "";
                    }
                    else
                    {
                        LblErruer.Text = "Vous n'êtes pas identifié";
                        LblSucces.Text = "";
                    }
                }
                else
                {
                    LblErruer.Text = "Erreur du format de la requette !!!";
                }
            }
        }

    }
}
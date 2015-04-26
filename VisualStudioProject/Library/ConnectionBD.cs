using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Library
{
    public class ConnectionBD
    {
        //variables de connexion à la BDD
        SqlConnection connect;

        public SqlConnection seConnecter()
        {
            //initialisation de la connexion
            connect = new SqlConnection();
            connect.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            return connect;

        }
    }
}
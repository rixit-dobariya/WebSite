using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBConnection
/// </summary
namespace HDFC
{


    public class DBConnection
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\01\source\repos\WebSite\WebSite\App_Data\HDFC_Loans.mdf;Integrated Security=True";
        public SqlConnection con;
        SqlCommand cmd;
        public DBConnection()
        {
            con = new SqlConnection(connectionString);
            con.Open();
        }

        int executeQuery(string query)
        {
            cmd = new SqlCommand(query, con);
            return cmd.ExecuteNonQuery();
        }
    }
}
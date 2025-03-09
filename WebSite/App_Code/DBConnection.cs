using System.Data.SqlClient;

/// <summary>
/// Summary description for DBConnection
/// </summary
namespace HDFC
{

    public class DBConnection
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\01\source\repos\WebSite\WebSite\App_Data\HDFC_Loans.mdf;Integrated Security=True";
        public SqlConnection con;
        public DBConnection()
        {
            con = new SqlConnection(connectionString);
            con.Open();
        }

    }
}
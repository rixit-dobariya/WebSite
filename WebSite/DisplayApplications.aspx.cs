using HDFC;
using System;
using System.Data;
using System.Data.SqlClient;

public partial class DisplayApplications : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       SqlConnection con= new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\01\source\repos\WebSite\WebSite\App_Data\HDFC_Loans.mdf;Integrated Security=True");
        con.Open();
        DataTable dataTable = new DataTable();
        string query = @"select LoanNo, AccountNo, ActHolderName, Profession, Email, ContactNo, LoanCategory, LoanType, IssueDate, Amount, CurrentAddress, LoanRemarks from Loans 
            inner join Accounts on Loans.AccountNo = Accounts.SavingActNo";
        using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, con))
        {
            sqlDataAdapter.Fill(dataTable);
            LoanGridView.DataSource = dataTable;
            LoanGridView.DataBind();
        }
    }
}
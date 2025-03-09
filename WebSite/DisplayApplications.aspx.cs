using HDFC;
using System;
using System.Data;
using System.Data.SqlClient;

public partial class DisplayApplications : System.Web.UI.Page
{
    DBConnection conHelper;
    protected void Page_Load(object sender, EventArgs e)
    {
        conHelper = new DBConnection();
        DataTable dataTable = new DataTable();
        string query = @"select LoanNo, AccountNo, ActHolderName, Profession, Email, ContactNo, LoanCategory, LoanType, IssueDate, Amount, CurrentAddress, LoanRemarks from Loans 
            inner join Accounts on Loans.AccountNo = Accounts.SavingActNo";
        using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, conHelper.con))
        {
            sqlDataAdapter.Fill(dataTable);
            LoanGridView.DataSource = dataTable;
            LoanGridView.DataBind();
        }
            
    }
}
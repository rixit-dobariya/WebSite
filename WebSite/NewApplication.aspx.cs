using System;
using System.Data;
using System.Data.SqlClient;
using HDFC;

public partial class NewApplication : System.Web.UI.Page
{
    DBConnection conHelper;
    protected void Page_Load(object sender, EventArgs e)
    {
        conHelper = new DBConnection();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string query="insert into Loans(AccountNo, LoanCategory, LoanType, IssueDate, Amount, CurrentAddress, LoanRemarks) values(@accountNo, @loanCategory, @loanType, @issueDate, @amount, @currentAddress, @loanRemarks)";
        SqlCommand cmd = new SqlCommand(query, conHelper.con);
        cmd.Parameters.AddWithValue("@accountNo", txtSavingAccNo.Text);
        cmd.Parameters.AddWithValue("@loanCategory", ddlLoanCategory.Text);
        cmd.Parameters.AddWithValue("@loanType", ddlLoanType.Text);
        cmd.Parameters.AddWithValue("@issueDate", txtIssueDate.Text);
        cmd.Parameters.AddWithValue("@amount", txtLoanAmount.Text);
        cmd.Parameters.AddWithValue("@currentAddress", txtCurrAddress.Text);
        cmd.Parameters.AddWithValue("@loanRemarks", txtLoanRemarks.Text);

        cmd.ExecuteNonQuery();
        lblResponse.Text = "Record inserted successfully!";

    }

    protected void txtSavingAccNo_TextChanged(object sender, EventArgs e)
    {
        string savingAccNo = txtSavingAccNo.Text;
        SqlCommand cmd = new SqlCommand("select ActHolderName from Accounts where SavingActNo=@accNo", conHelper.con);
        cmd.Parameters.AddWithValue("accNo", savingAccNo);

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count>0)
        {
            txtHolderName.Text = dt.Rows[0][0].ToString();
            lblSavingMessage.Text = "";
        }
        else
        {
            lblSavingMessage.Text = "This account number does not exist";
            txtHolderName.Text = "";
        }
    }
}
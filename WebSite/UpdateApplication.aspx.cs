using System;
using System.Data.SqlClient;
using System.Data;
using HDFC;

public partial class UpdateApplication : System.Web.UI.Page
{
    DBConnection conHelper;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.conHelper = new DBConnection();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string query = @"update Loans set AccountNo=@accountNo, LoanCategory=@loanCategory, LoanType=@loanType, IssueDate=@issueDate, Amount=@amount, CurrentAddress=@currentAddress, LoanRemarks=@loanRemarks where LoanNo=@loanNo";
        SqlCommand cmd = new SqlCommand(query, conHelper.con);
        cmd.Parameters.AddWithValue("accountNo", txtSavingAccNo.Text);
        cmd.Parameters.AddWithValue("loanCategory", ddlLoanCategory.Text);
        cmd.Parameters.AddWithValue("loanType", ddlLoanType.Text);
        cmd.Parameters.AddWithValue("issueDate", txtIssueDate.Text);
        cmd.Parameters.AddWithValue("amount", txtLoanAmount.Text);
        cmd.Parameters.AddWithValue("currentAddress", txtCurrAddress.Text);
        cmd.Parameters.AddWithValue("loanRemarks", txtLoanRemarks.Text);
        cmd.Parameters.AddWithValue("loanNo", txtLoanNo.Text);

        cmd.ExecuteNonQuery();
        lblResponse.Text = "Record updated successfully!";

    }

    protected void txtSavingAccNo_TextChanged(object sender, EventArgs e)
    {
        string savingAccNo = txtSavingAccNo.Text;
        SqlCommand cmd = new SqlCommand("select ActHolderName from Accounts where SavingActNo=@accNo", conHelper.con);
        cmd.Parameters.AddWithValue("accNo", savingAccNo);

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
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

    protected void btnGetLoanDetails_Click(object sender, EventArgs e)
    {
        string loanNo = txtLoanNo.Text;
        SqlCommand cmd = new SqlCommand("select * from Loans l left join Accounts a ON a.SavingActNo = l.AccountNo where l.LoanNo=@loanNo", conHelper.con);
        cmd.Parameters.AddWithValue("loanNo", loanNo);

        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            txtSavingAccNo.Text = dt.Rows[0]["AccountNo"].ToString();
            txtHolderName.Text = dt.Rows[0]["ActHolderName"].ToString();
            ddlLoanType.SelectedValue = dt.Rows[0]["LoanType"].ToString();
            ddlLoanCategory.SelectedValue = dt.Rows[0]["LoanCategory"].ToString();
            txtIssueDate.Text = dt.Rows[0]["IssueDate"].ToString();
            txtLoanAmount.Text = dt.Rows[0]["Amount"].ToString();
            txtCurrAddress.Text = dt.Rows[0]["CurrentAddress"].ToString();
            txtLoanRemarks.Text = dt.Rows[0]["LoanRemarks"].ToString();
            lblResponse.Text = "";
        }
        else
        {
            lblResponse.Text = "This loan number does not exist";
        }
    }
}
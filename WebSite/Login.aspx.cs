using HDFC;
using System;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\01\source\repos\WebSite\WebSite\App_Data\HDFC_Loans.mdf;Integrated Security=True");
        con.Open();
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text;
        string password = txtPassword.Text;
        string query = $"select * from Users where UserEmail='{email}' and Password='{password}'";
        SqlDataAdapter adapter = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adapter.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["Email"] = ds.Tables[0].Rows[0]["UserEmail"];
            lblResponse.Text = "Login Successful";
            Response.Redirect("Home.aspx");
        }
        else
        {
            lblResponse.Text = "No such record exists";
        }
    }
}
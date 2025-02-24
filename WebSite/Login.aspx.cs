using HDFC;
using System;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    DBConnection conHelper;
    protected void Page_Load(object sender, EventArgs e)
    {
        conHelper = new DBConnection();
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text;
        string password = txtPassword.Text;
        string query = $"select * from Users where UserEmail='{email}' and Password='{password}'";
        SqlDataAdapter adapter = new SqlDataAdapter(query, conHelper.con);
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
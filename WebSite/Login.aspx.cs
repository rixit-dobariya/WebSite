using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HDFC;

public partial class Login : System.Web.UI.Page
{
    DBConnection conHelper;
    protected void Page_Load(object sender, EventArgs e)
    {
        conHelper = new DBConnection();
    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        string email  =txtEmail.Text;
        string password = txtPassword.Text;

        string query = $"select * from User where UserEmail={email} and Password={password}";
        SqlDataAdapter adapter = new SqlDataAdapter(query, conHelper.con);
        DataSet dataSet = new DataSet();

        if (dataSet.Tables[0].Rows.Count>0)
        {
            lblResponse.Text = "Login Successful";
        }
        else
        {
            lblResponse.Text = "No such record exists";
        }
    }
}
using System;

public partial class HDFCMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        lblUserEmail.Text = Session["Email"]?.ToString();
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Remove("Email");
        Response.Redirect("Login.aspx");
    }
}

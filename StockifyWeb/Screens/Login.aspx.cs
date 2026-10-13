using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Page.IsValid double-checks that the RequiredFieldValidators passed
            if (Page.IsValid)
            {
                // Redirect to home/dashboard upon login
                Response.Redirect("Dashboard.aspx");
            }
        }
    }
}
using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Add your registration logic here (save to database)
                // Then redirect to login or dashboard
                Response.Redirect("Login.aspx");
            }
        }
    }
}
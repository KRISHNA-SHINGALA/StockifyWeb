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
            // Add your registration logic here

            // Redirect to login or dashboard upon successful registration
            Response.Redirect("Login.aspx");
        }
    }
}
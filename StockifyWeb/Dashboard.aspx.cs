using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Protect the dashboard from unauthorized access.
            // If you set a Session variable during Login (e.g., Session["Username"] = txtUsername.Text), 
            // you can uncomment this block to bounce unauthenticated users back to the login page.

            /*
            if (Session["Username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            */

            if (!IsPostBack)
            {
                // Any code you want to run only when the page first loads (like loading data from a database) goes here.
            }
        }
    }
}
using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class AddCustomer : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddCustomer_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Logic to save the new customer to the database will go here

                // After saving successfully, redirect back to the Customer list
                Response.Redirect("Customers.aspx");
            }
        }
    }
}
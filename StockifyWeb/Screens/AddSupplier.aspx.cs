using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class AddSupplier : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveSupplier_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Add your code here to save the supplier to the database

                // Redirect back to the supplier list after successful save
                Response.Redirect("Suppliers.aspx");
            }
        }
    }
}
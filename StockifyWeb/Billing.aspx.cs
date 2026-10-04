using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Billing : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnGenerateInvoice_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Logic to generate the invoice and clear the cart goes here
            }
        }
    }
}
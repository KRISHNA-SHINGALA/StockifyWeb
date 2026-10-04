using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Purchases : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAddPurchaseOrder_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Logic to save the purchase order goes here
            }
        }
    }
}
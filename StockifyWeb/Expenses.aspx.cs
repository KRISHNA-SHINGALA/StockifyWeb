using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Expenses : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveExpense_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Logic to save the expense to the database will go here
            }
        }
    }
}
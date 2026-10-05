using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Employees : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveEmployee_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Logic to save the new employee will go here
            }
        }
    }
}
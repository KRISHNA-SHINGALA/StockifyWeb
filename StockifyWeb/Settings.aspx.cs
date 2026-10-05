using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Settings : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            // Validates ONLY the Shop Information tab fields
            Page.Validate("ShopInfoGroup");
            if (Page.IsValid)
            {
                // Logic to update the Shop Information goes here
            }
        }

        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            // Validates ONLY the Security tab fields
            Page.Validate("SecurityGroup");
            if (Page.IsValid)
            {
                // Logic to update the password goes here
            }
        }
    }
}
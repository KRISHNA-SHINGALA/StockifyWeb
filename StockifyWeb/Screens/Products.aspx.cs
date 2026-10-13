using System;
using System.Web.UI;

namespace StockifyWeb
{
    public partial class Products : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSaveProduct_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Logic to save the new product will go here later
            }
        }
    }
}
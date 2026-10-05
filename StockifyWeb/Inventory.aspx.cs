using System;
using System.Web.UI;
using System.Web.UI.HtmlControls; // Add this using statement at the top

namespace StockifyWeb
{
    public partial class Inventory : Page
    {
        // Manually link the HTML rows to the C# file
        protected HtmlTableRow row1;
        protected HtmlTableRow row2;
        protected HtmlTableRow row3;
        protected HtmlTableRow row4;
        protected HtmlTableRow row5;
        protected HtmlTableRow row6;
        protected HtmlTableRow row7;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnDelete1_Click(object sender, EventArgs e)
        {
            row1.Visible = false;
        }

        protected void btnDelete2_Click(object sender, EventArgs e)
        {
            row2.Visible = false;
        }

        protected void btnDelete3_Click(object sender, EventArgs e)
        {
            row3.Visible = false;
        }

        protected void btnDelete4_Click(object sender, EventArgs e)
        {
            row4.Visible = false;
        }

        protected void btnDelete5_Click(object sender, EventArgs e)
        {
            row5.Visible = false;
        }

        protected void btnDelete6_Click(object sender, EventArgs e)
        {
            row6.Visible = false;
        }

        protected void btnDelete7_Click(object sender, EventArgs e)
        {
            row7.Visible = false;
        }
    }
}
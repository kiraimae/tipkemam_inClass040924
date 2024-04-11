using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tipkemam_inClass040924
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // This should only run once when page is inititally loaded in browser -- remove duplication
                lblFruits.Items.Add("Grapes");
            }
        }
        protected void lblFruits_SelectedIndexChanged(object sender, EventArgs e)
        {
            // This code runs when the user slects a new item from the lblFruits List Box
            // Copy the currently selected item from the list box into our label
            lblChosenFruit.Text = lblFruits.SelectedValue;
        }
        // I need an event that will run when the user, 
        // in their browser, selects a fruit from the list box
        // "event driven" programming. 
        // Our event is The User selected an item from the list box
    }
}
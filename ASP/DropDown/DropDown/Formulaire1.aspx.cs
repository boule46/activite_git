using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DropDown
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private void afficher(string evenement)
        {
            EventBox.Text = String.Format("L'evenement {0} a eu lieu \n", evenement) + EventBox.Text;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string selected1 = DropDownList1.SelectedValue;

            
            
        }

        protected void SqlDataSource3_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            afficher("Selected" + e.AffectedRows.ToString());
        }

        protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            afficher("Selecting" + e.Command.CommandText);
        }

        protected void SqlDataSource3_Updated(object sender, SqlDataSourceStatusEventArgs e)
        {
            afficher("Updated");
        }

        protected void SqlDataSource3_Updating(object sender, SqlDataSourceCommandEventArgs e)
        {
            afficher("Updating");
        }

        protected void SqlDataSource3_DataBinding(object sender, EventArgs e)
        {
            afficher("DataBinding");
        }
    }
}
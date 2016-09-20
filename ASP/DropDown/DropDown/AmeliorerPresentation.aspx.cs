using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Data.Common;


namespace DropDown
{
    public partial class AmeliorerPresentation : System.Web.UI.Page
    {
        DataView NewVar = null; 
        protected string CategorieName(SqlDataSource DataSource, DataRowView nom, string ID, string Name)//ameliorer pour tout type de int, string; etc avec typeof???
         {
            NewVar = (DataView)DataSource.Select(DataSourceSelectArguments.Empty);

            DataRow ligne = nom.Row;

            int CatName = (int)ligne[ID];

            NewVar.RowFilter = ID + " = " + CatName;

            return NewVar[0][Name].ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.EditIndex = 1;
        }

        protected void SqlDataSource1_Deleted(object sender, SqlDataSourceStatusEventArgs e)
        {
            if(e.Exception != null)
            {
                LabelErreur.Text = "Vous ne pouvez pas supprimer ce champs car il est en commande!";
                e.ExceptionHandled = true;
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            LabelCommandName.Text = e.CommandName;
            LabelCommandArgument.Text = e.CommandArgument.ToString();
        }
    }
}
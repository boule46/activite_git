using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Text;

namespace AspConnecter
{
    public partial class _Default : Page
    {
        private SqlDataReader dataR1;

        protected string ListeProduits
        {
            get
            {
                return LireSQL(dataR1).ToString();
            }
        }

        private string RecupererChaineConnection(string NomCle)
        {
            Configuration config1 = WebConfigurationManager.OpenWebConfiguration("~/");

            if (0 < config1.ConnectionStrings.ConnectionStrings.Count)
            {
                return config1.ConnectionStrings.ConnectionStrings[NomCle].ToString();
            }
            else
            {
                return string.Empty;
            }

        }

        private StringBuilder LireSQL(SqlDataReader dataR1)
        {
            StringBuilder BLD = new StringBuilder();
            BLD.Append("<table style='background-color: #0066ff; color: white; width: 100%' class='tabProduits'><tr>");

            for (int i = 0; i < dataR1.FieldCount; i++)
            {
                BLD.Append("<th style='background-color: black'>" + dataR1.GetName(i) + "</th>");
            }

            BLD.Append("<tr>");

            while (dataR1.Read())
            {
                BLD.Append("<tr>");

                for (int i = 0; i < dataR1.FieldCount; i++)
                {
                    BLD.Append("<th>" + dataR1[i] + "</th>");
                }
                BLD.Append("</tr>");
            }
            BLD.Append("</table>");

            return BLD;

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(RecupererChaineConnection("ComptoirAnglais_V1"));
            SqlCommand commande = connection.CreateCommand();

            commande.CommandText = @"select dbo.Products.ProductID, dbo.Products.ProductName, dbo.Categories.CategoryName, dbo.Products.UnitPrice from Products join dbo.Categories on dbo.Products.CategoryID = dbo.Categories.CategoryID; ";

            connection.Open();

            dataR1 = commande.ExecuteReader();
            commande.Dispose();



            //Literal1.Text = LireSQL(dataR1).ToString();//affiche le table stringbuilder


        }
    }
}
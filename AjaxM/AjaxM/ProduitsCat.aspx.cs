using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Newtonsoft.Json;

namespace AjaxM
{
    public partial class ProduitsCat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rechercheCat = null;
            rechercheCat = this.Request.Params["MainContent_dropDown"];

            string commandText = "select ProductID, ProductName from Products where CategoryID = @CategoryID;";

            List<ClassProduit> listProduit = new List<ClassProduit>();

            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-5A9RHHB;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True"))
            {
                SqlCommand command = new SqlCommand(commandText, connection);
                command.Parameters.Add(new SqlParameter("@CategoryID", rechercheCat));
                
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                        listProduit.Add(new ClassProduit() { ProductID = reader.GetInt32(0), ProductName = reader.GetString(1) });

                        }
                    }
                
            }

            string json = JsonConvert.SerializeObject(listProduit, Formatting.Indented);

            Response.Clear();
            Response.ContentType = "application/json";
            Response.Write(json);
            Response.End();

        }
    }
}
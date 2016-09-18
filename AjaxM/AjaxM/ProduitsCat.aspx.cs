using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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

            Dictionary<string, string> listProduit = new Dictionary<string, string>();

            using (SqlConnection connection = new SqlConnection("Data Source=EVA;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True"))
            {
                SqlCommand command = new SqlCommand(commandText, connection);
                command.Parameters.Add(new SqlParameter("@CategoryID", rechercheCat));
                
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            listProduit.Add(reader.GetInt32(0).ToString(), reader.GetString(1));
                        }
                    }
                
            }

            string json = JsonConvert.SerializeObject(listProduit, Formatting.Indented);

            Response.Clear();
            Response.ContentType = "text/plain";
            Response.Write(json);
            Response.End();

        }
    }
}
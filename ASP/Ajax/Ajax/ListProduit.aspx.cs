using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text;


namespace Ajax
{
    public partial class ListProduit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string rechercheID = null;
            rechercheID = this.Request.Params["3"];


            Dictionary<string, string> list = new Dictionary<string, string>();

            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-5A9RHHB;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True"))
            using (SqlCommand command = new SqlCommand("select ProductID, ProductName from Products where CategoryID = @CategoryID", connection))
            {
                command.Parameters.Add(new SqlParameter("@CategoryID", 3));

                connection.Open();
 
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        list.Add(reader.GetValue(0).ToString(), reader.GetValue(1).ToString());
                    }
                }


                string json = JsonConvert.SerializeObject(list, Formatting.Indented);

                Response.Clear();
                Response.ContentType = "text/plain";
                Response.Write(json);
                 Response.End();
            }
        }
    }
}
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
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Dictionary<string, string> liste = new Dictionary<string, string>();

            using (SqlConnection connection = new SqlConnection("Data Source=EVA;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True"))
            {
                using (SqlCommand command = new SqlCommand("select CategoryID, CategoryName from Categories", connection))
                {
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            liste.Add(reader.GetInt32(0).ToString(), reader.GetString(1));
                        }
                    }
                }

            }

            string json = JsonConvert.SerializeObject(liste, Formatting.Indented);

            Response.Clear();
            Response.ContentType = "text/plain";
            Response.Write(json);
            Response.End();

        }
    }
}
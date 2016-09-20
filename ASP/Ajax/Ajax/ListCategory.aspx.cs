using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Ajax;
using System.Data;
using Newtonsoft.Json;
using System.Data.Common;
using System.Collections.Specialized;

namespace Ajax
{
    public partial class ListCategory : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
           

            Dictionary<string, string> list = new Dictionary<string, string>();

            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-5A9RHHB;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True"))
            using (SqlCommand command = new SqlCommand("select CategoryID, CategoryName from Categories", connection))
            {

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

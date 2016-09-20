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
       //     ChargerOption1();
         ChargerOption2();
        }

        private void ChargerOption2()
        {
            List<Categ> liste = new List<Categ>();

            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-5A9RHHB;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True"))
            {
                using (SqlCommand command = new SqlCommand("select CategoryID, CategoryName from Categories", connection))
                {
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {

                            liste.Add(new Categ() { CategoryID = reader.GetInt32(0), CategoryName = reader.GetString(1) }); 
                        }
                    }
                }

            }

            string json = JsonConvert.SerializeObject(liste, Formatting.Indented);

            Response.Clear();
            Response.ContentType = "application/json";
            Response.Write(json);
            Response.End();
        }

        //private void ChargerOption1()
        //{
        //    List<Object> liste = new List<object>();

        //    using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-5A9RHHB;Initial Catalog=ComptoirAnglais_V1;Integrated Security=True"))
        //    {
        //        using (SqlCommand command = new SqlCommand("select CategoryID, CategoryName from Categories", connection))
        //        {
        //            connection.Open();

        //            using (SqlDataReader reader = command.ExecuteReader())
        //            {
        //                while (reader.Read())
        //                {
        //                    liste.Add(new object"CategoryID", reader.GetInt32(0).ToString());
        //                    liste.Add("CategoryName", reader.GetString(1));
        //                }
        //            }
        //        }

        //    }

        //    string json = JsonConvert.SerializeObject(liste, Formatting.Indented);

        //    Response.Clear();
        //    Response.ContentType = "text/plain";
        //    Response.Write(json);
        //    Response.End();

        //}
}
}
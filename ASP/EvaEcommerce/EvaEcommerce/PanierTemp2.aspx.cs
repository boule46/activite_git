using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EvaEcommerce.DataSetEcommerceTableAdapters;
using System.Text;
using Newtonsoft.Json;
using System.Data.SqlClient;
using System.Data;

namespace EvaEcommerce
{
    public partial class PanierTemp2 : System.Web.UI.Page
    {
        private DataSetEcommerce DS;
        private ProductTableAdapter PTA;
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = this.Request.Params["idPN"];

            DS = new DataSetEcommerce();
            DS.EnforceConstraints = false;
            PTA = new ProductTableAdapter();

            PTA.FillByProductID(DS.Product, /*Int32.Parse(id)*/ 4).ToString();

            StringBuilder SB = new StringBuilder();

            foreach (DataSetEcommerce.ProductRow item in DS.Product)
            {
                SB.Append(item.Name);
            }

            cookieID.InnerHtml = SB.ToString() + " (Réf:" +/* id.ToString()*/ 4 + ")";







            //if (Page.IsPostBack && Request.Cookies["panierTemp"] != null)
            //{
                

            //    HttpCookie cookie = new HttpCookie("Panier");
            //    cookie.Values["SessionID"] = Session.SessionID;
            //    cookie.Values["ProduitID"] = id.ToString();
            //    cookie.Values["DateDernierVisite"] = DateTime.Now.ToString();
            //    cookie.Expires = DateTime.Now.AddDays(5);

            //    Response.Cookies.Add(cookie);
            //    Response.Cookies["panierTemp"].Expires = DateTime.Now.AddDays(-1);
            //    //this.Response.Redirect("LireCookie.aspx");
            //}

         }
    }
}
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
    public partial class Produit : System.Web.UI.Page
    {
        private DataSetEcommerce DS;
        private ProductTableAdapter PTA;
        private CategoryTableAdapter CTA;
        protected void Page_Load(object sender, EventArgs e)
        {
            AfficherCategorie();




        }

        public void AfficherCategorie()
        {
            string CategorieID = this.Request.Params.ToString();

            DS = new DataSetEcommerce();
            DS.EnforceConstraints = false;
            PTA = new ProductTableAdapter();
           
           PTA.FillByCategoryID(DS.Product, 2);
    
            StringBuilder SBproduct = new StringBuilder();

            foreach (DataSetEcommerce.ProductRow item in DS.Product)
            {
                SBproduct.AppendFormat("<section><h1>{0} (Réf: {1})</h1><p>{2}</p><p>Prix: {3}<hr/>", item.Name, item.Id, item.ShortDescription, item.Price);
            }


            ProduitsAff.InnerHtml = SBproduct.ToString();
        }


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EvaEcommerce
{
    public partial class PanierTemp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                var id = this.Request.Params["idP"];

                HttpCookie cookie = new HttpCookie("panierTemp");
                cookie.Value = "vrai";
                Response.Cookies.Add(cookie);
                this.Response.Redirect("PanierTemp2.aspx?idPN=" + Convert.ToInt32(id));



            }
        }
    }
}
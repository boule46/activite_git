using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sources_001_A001_Cookies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            
                HttpCookie cookie = new HttpCookie("Accepte");
                cookie.Value = "vrai";
            Response.Cookies.Add(cookie);
            this.Response.Redirect("Cookies2.aspx");
         
            

        }

    }
}
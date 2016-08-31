using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sources_001_A001_Cookies2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Page.IsPostBack && Request.Cookies["Accepte"] != null)
        {
            
            HttpCookie cookie = new HttpCookie("Client");
            cookie.Values["Nom"] = Request.Form["Nom"];       //mettre une formulaire à la place
                cookie.Values["Prenom"] = Request.Form["Prenom"];
                cookie.Values["DateDernierVisite"] = DateTime.Now.ToString();
                cookie.Expires = DateTime.Now.AddDays(1);

            Response.Cookies.Add(cookie);
            Response.Cookies["Accepte"].Expires= DateTime.Now.AddDays(-1);
            this.Response.Redirect("LireCookie.aspx");
        }
            

        
    }
         protected void cookieForm_ServerClick(object sender, EventArgs e)
    {
    }
}
   
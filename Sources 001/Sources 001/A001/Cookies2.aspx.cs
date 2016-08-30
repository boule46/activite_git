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
        if(Request.Cookies["AcceptCookie"] == null)
        {
            HttpBrowserCapabilities capacitesNavigateur = Request.Browser;
            if(capacitesNavigateur.Cookies)
            {
                HttpCookie cookie = new HttpCookie("AcceptCookie");
                cookie.Values["Nom"] = "Janssen";
                cookie.Values["Prenom"] = "Jannie";
                cookie.Values["DateDernierVisite"] = DateTime.Now.ToString();
                cookie.Expires = DateTime.Now.AddDays(30);

                Response.Cookies.Add(cookie);



            }
            else
            {

            }

           
        }
    }
}
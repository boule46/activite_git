using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Controles
{
    public partial class cookie001 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                Response.Write("Vous avez déjà visiter cette page");
            }
            else if(!IsPostBack)
            {
                Response.Write("Post Back is false");
            }
            else
            {
                Response.Write("Bienvenue sur le site");
            }
        }
    }
}
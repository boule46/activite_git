using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConfigAppliWeb
{
    public partial class _Default : Page
    {

       

       

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = string.Format("ID de session : {0}.\n", this.Session.SessionID);
            Label2.Text = string.Format("Date et heure de session : {0}\n", Session["SessionHeure"].ToString());
            //Label3.Text = "Date et heure du context : " + Context.Items["ContextHeure"].ToString();
            Label4.Text = "Date et heure de l'application : " + Application["AppliHeure"].ToString();
            Label3.Text = Application["CompteurRequest"].ToString();
           


        }


    }
}
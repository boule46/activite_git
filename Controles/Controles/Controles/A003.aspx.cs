using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast;

namespace Controles
{
    public partial class A003 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

       

        protected void txtNom_ServerChange(object sender, EventArgs e)
        {
            MasterBody.Attributes.Add("bgcolor", "yellow");
        }
    }
}
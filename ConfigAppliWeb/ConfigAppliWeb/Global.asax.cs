using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Threading;

namespace ConfigAppliWeb
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            Application["AppliHeure"] = DateTime.Now;
           
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        void Session_Start(object sender, EventArgs e)
        {
            Session["SessionHeure"] = DateTime.Now;

           

        }

        void Context_Start(object sender, EventArgs e)
        {
            Context.Items["ContextHeure"] = DateTime.Now;
        }

        void Application_PostResolveRequestCache(object sender, EventArgs e)
        {
            Application.Lock();
            Application["CompteurRequest"] = (Application["CompteurRequest"] != null) ? ((int)Application["CompteurRequest"]) + 1 : 1;
            Application.UnLock();
        }

       
        
    }
}
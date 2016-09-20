using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AjaxCDN2.Startup))]
namespace AjaxCDN2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

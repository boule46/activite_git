using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AjaxM.Startup))]
namespace AjaxM
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

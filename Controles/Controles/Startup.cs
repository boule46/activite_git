using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Controles.Startup))]
namespace Controles
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

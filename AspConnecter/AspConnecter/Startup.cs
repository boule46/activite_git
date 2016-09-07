using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AspConnecter.Startup))]
namespace AspConnecter
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

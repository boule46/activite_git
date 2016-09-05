using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MonPremierFormulaire.Startup))]
namespace MonPremierFormulaire
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

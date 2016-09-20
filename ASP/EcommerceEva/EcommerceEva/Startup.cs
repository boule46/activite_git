using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EcommerceEva.Startup))]
namespace EcommerceEva
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DropDown.Startup))]
namespace DropDown
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(StackClient.Startup))]
namespace StackClient
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

using System.IO;
using System.Web;

namespace BookHub.Controllers
{
    public class IOWork
    {
        private static readonly string app_dataFolder;

        static IOWork()
        {
            app_dataFolder = HttpContext.Current.Server.MapPath("~/Content");
        }

        public static void MkDir(string value)
        {
            Directory.CreateDirectory($"{app_dataFolder}/img/media/{value}");
            Directory.CreateDirectory($"{app_dataFolder}/img/media/{value}/conversions");
        }
    }
}
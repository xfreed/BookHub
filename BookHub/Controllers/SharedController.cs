using BookHub.Models;
using System;
using System.Web.Mvc;
using Microsoft.AspNet.Identity.Owin;
using System.Web;
using System.Linq;
using BookHub.ViewModel;

namespace BookHub.Controllers
{
    public class SharedController : Controller
    {
        // GET: Shared
        public ActionResult Index()
        {
            return View();
        }

        public string GetIconUrl()
        {
            using (var dataContext = new BookHubDBEntities())
            {
                User user = dataContext.Users.Where(query => query.Email.Equals(User.Identity.Name)).SingleOrDefault();
                if (user == null)
                    return null;
                //32x32

                if (user.Icon == true)
                    return $"/Content/img/media/{user.UserID}/conversions/avatar-thumb.jpg";
                else
                    return $"/Content/img/main/avatar-thumb.png";
            }
        }

        public RedirectResult ExitFromAccount(object sender, EventArgs e)
        {
            Session.RemoveAll();
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1));
            Response.Cache.SetNoStore();
            return Redirect("~/");
        }
    }
}
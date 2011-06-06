using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Proline.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Title = "Datum Clearmind Sdn. Bhd.";
            ViewBag.Message = "Welcome Datum Clearmind Sdn Bhd web application.";
            return View();
        }

        public ActionResult About()
        {
            return View();
        }
    }
}

using app.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace app.Controllers
{
    public class PersonasController : Controller
    {
        // GET: Personas
        public ActionResult Index()
        {

            var db = new cargaarchivostestEntities();

            var listado = from x in db.Persona
                          select x;

            return View(listado);
        }
    }
}
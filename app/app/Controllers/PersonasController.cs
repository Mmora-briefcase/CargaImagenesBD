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

        public ActionResult Vermas(int id)
        {
            var model = new Persona();
            var db = new cargaarchivostestEntities();

            var opersonadb = db.Persona.Find(id);

            model.Id = opersonadb.Id;
            model.Nombre = opersonadb.Nombre;
            model.Historia = opersonadb.Historia;
            


            return View(model);
        }

        public ActionResult Nuevo( )
        {

            return View();
        }
        [HttpPost]
        public ActionResult Nuevo(Persona model)
        {

            return View();
        }
    }
}
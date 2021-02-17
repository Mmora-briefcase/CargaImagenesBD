using app.Models;
using System;
using System.Collections.Generic;
using System.IO;
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


            try
            {
                var db = new cargaarchivostestEntities();
                if (System.Web.HttpContext.Current.Request.Files.AllKeys.Any())
                {
                    var imagerequest = System.Web.HttpContext.Current.Request.Files["Imagen"];
                    var ruta = Server.MapPath("~/Content/Archivos/");

                    var nombrearchivo = imagerequest.FileName;

                    //Guardar la imagen del request en la carpeta
                    imagerequest.SaveAs(ruta + nombrearchivo);

                    //Guardar la imagen del modelo con el nombre en base de datos

                    //model.Imagen = "~/Archivos/" + imagerequest.FileName;
                    model.Imagen = "~/Content/Archivos/" + nombrearchivo;


                    db.Persona.Add(model);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }

            }
            catch (Exception ex)
            {

                return Content(ex.Message);
            }

            return View();
        }
    }
}

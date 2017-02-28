using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Entidades;
using Negocio;
using System.Web.Http;

namespace WebApiCore.Controllers
{
    public class PagoSucursalController : ApiController
    {
        //
        // GET: /OrdenPagoSucursal/
        public OrdenPagoLN oOrdenPagoLN { get { return new OrdenPagoLN(); } }

        public IEnumerable<OrdenPago> Get(int IdSucursal, string Moneda)
        {
           
            //List<OrdenPago> lista = oOrdenPagoLN.Listar_OrdenPago_LocalMoneda(IdSucursal, Moneda).ToList();
            //return new Json(lista, JsonRequestBehavior.AllowGet);
            return oOrdenPagoLN.Listar_OrdenPago_LocalMoneda(IdSucursal, Moneda);
        }

    }
}

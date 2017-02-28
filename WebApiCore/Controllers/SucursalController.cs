using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Entidades;
using Negocio;

namespace WebApiCore.Controllers
{
    public class SucursalController : ApiController
    {
        //
        // GET: /OrdenPagoSucursal/
        public SucursalLN oSucursalLN { get { return new SucursalLN(); } }

        public IEnumerable<Sucursal> Get(int IdBanco)
        {
            return oSucursalLN.Listar_Sucursal_PorBanco(IdBanco);
        }

    }
}

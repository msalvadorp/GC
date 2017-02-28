using System;
using System.Collections.Generic;
using System.Runtime.Serialization;
using System.ComponentModel.DataAnnotations;
using System.Data;

namespace Entidades
{
    public partial class OrdenPago 
    {

        public OrdenPago()
        {
        }

        public OrdenPago(IDataReader reader)
        {
            			this.IdOrdenPago = Convert.ToInt32(reader["IdOrdenPago"]);  
			this.IdSucursal = Convert.ToInt32(reader["IdSucursal"]);  
			this.Monto = Convert.ToDecimal(reader["Monto"]);  
			this.Moneda = Convert.ToString(reader["Moneda"]);  
			this.Estado = Convert.ToString(reader["Estado"]);  
			this.FechaPago = Convert.ToDateTime(reader["FechaPago"]);  
			this.FlgEliminado = Convert.ToBoolean(reader["FlgEliminado"]);  

        }


    }

    

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;

namespace Entidades
{
    [DataContract]
    public partial class OrdenPago
    {
        #region Propiedades
        [DataMember]  
		public int IdOrdenPago { get; set; }  
		[DataMember]  
		public int IdSucursal { get; set; }  
		[DataMember]  
		public decimal Monto { get; set; }  
		[DataMember]  
		public string Moneda { get; set; }  
		[DataMember]  
		public string Estado { get; set; }  
		[DataMember]  
		public DateTime FechaPago { get; set; }  
		[DataMember]  
		public bool FlgEliminado { get; set; }  
		
        #endregion
    }

    

}
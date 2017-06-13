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
		public int Moneda { get; set; }  
		[DataMember]  
		public int Situacion { get; set; }  
		[DataMember]  
		public DateTime FechaPago { get; set; }  
		[DataMember]  
		public bool FlgEliminado { get; set; }  
		
        #endregion
    }

    

}
﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WindowsFormsApp3
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class JosephTutos_PedidosEntities : DbContext
    {
        public JosephTutos_PedidosEntities()
            : base("name=JosephTutos_PedidosEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<bancos> bancos { get; set; }
        public virtual DbSet<categoria> categoria { get; set; }
        public virtual DbSet<cliente> cliente { get; set; }
        public virtual DbSet<cuentascliente> cuentascliente { get; set; }
        public virtual DbSet<estadoorden> estadoorden { get; set; }
        public virtual DbSet<mediopago> mediopago { get; set; }
        public virtual DbSet<ordendetalle> ordendetalle { get; set; }
        public virtual DbSet<ordenes> ordenes { get; set; }
        public virtual DbSet<producto> producto { get; set; }
        public virtual DbSet<subcategoria> subcategoria { get; set; }
        public virtual DbSet<tienda> tienda { get; set; }
        public virtual DbSet<tipocuenta> tipocuenta { get; set; }
    
        public virtual ObjectResult<SP_Clientes_Result> SP_Clientes(string idCliente)
        {
            var idClienteParameter = idCliente != null ?
                new ObjectParameter("idCliente", idCliente) :
                new ObjectParameter("idCliente", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<SP_Clientes_Result>("SP_Clientes", idClienteParameter);
        }
    }
}

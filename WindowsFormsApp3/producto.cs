//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class producto
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public producto()
        {
            this.ordendetalle = new HashSet<ordendetalle>();
        }
    
        public int prod_id { get; set; }
        public string prod_codigo { get; set; }
        public string prod_nombre { get; set; }
        public string prod_descripcion { get; set; }
        public Nullable<double> prod_precioanterior { get; set; }
        public Nullable<double> prod_preciounitario { get; set; }
        public Nullable<int> prod_idcategoria { get; set; }
        public string prod_foto { get; set; }
        public string prod_color { get; set; }
        public string prod_ranking { get; set; }
        public Nullable<int> prod_stockmin { get; set; }
        public Nullable<int> prod_stok { get; set; }
        public Nullable<int> prod_stokmax { get; set; }
        public Nullable<double> prod_calificacion { get; set; }
        public string prod_fecha { get; set; }
        public string prod_countventas { get; set; }
        public Nullable<bool> prod_favorito { get; set; }
        public Nullable<double> prod_descuento { get; set; }
        public Nullable<int> prod_idtienda { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ordendetalle> ordendetalle { get; set; }
        public virtual subcategoria subcategoria { get; set; }
        public virtual tienda tienda { get; set; }
    }
}

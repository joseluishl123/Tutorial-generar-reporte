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
    
    public partial class subcategoria
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public subcategoria()
        {
            this.producto = new HashSet<producto>();
        }
    
        public int subcat_id { get; set; }
        public string subcat_descripcion { get; set; }
        public string subcat_foto { get; set; }
        public Nullable<int> subcat_idcategoria { get; set; }
    
        public virtual categoria categoria { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<producto> producto { get; set; }
    }
}

//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KonusarakOgrenProje
{
    using System;
    using System.Collections.Generic;
    
    public partial class Sınavlar
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sınavlar()
        {
            this.Sorularr = new HashSet<Sorularr>();
        }
    
        public int sınavId { get; set; }
        public string baslik { get; set; }
        public System.DateTime tarih { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sorularr> Sorularr { get; set; }
    }
}

namespace Sam.Models
{
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Xml.Serialization;

    [Table("nhacungcap")]
    public partial class nhacungcap
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public nhacungcap()
        {
            hoadonnhaps = new HashSet<hoadonnhap>();
        }

        [Key]
        public int mancc { get; set; }

        [StringLength(250)]
        public string tenncc { get; set; }

        [StringLength(250)]
        public string diachi { get; set; }

        [StringLength(10)]
        public string dienthoai { get; set; }
        [JsonIgnore]
        [XmlIgnore]

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<hoadonnhap> hoadonnhaps { get; set; }
    }
}

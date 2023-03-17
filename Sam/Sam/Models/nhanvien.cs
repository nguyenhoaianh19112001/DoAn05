namespace Sam.Models
{
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Xml.Serialization;

    [Table("nhanvien")]
    public partial class nhanvien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public nhanvien()
        {
            donhangs = new HashSet<donhang>();
            hoadonnhaps = new HashSet<hoadonnhap>();
        }

        [Key]
        public int manv { get; set; }

        [StringLength(250)]
        public string tennv { get; set; }

        [StringLength(10)]
        public string sodienthoai { get; set; }

        [StringLength(255)]
        public string diachi { get; set; }
        [JsonIgnore]
        [XmlIgnore]

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<donhang> donhangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<hoadonnhap> hoadonnhaps { get; set; }
    }
}

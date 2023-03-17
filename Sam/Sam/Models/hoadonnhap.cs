namespace Sam.Models
{
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Xml.Serialization;

    [Table("hoadonnhap")]
    public partial class hoadonnhap
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public hoadonnhap()
        {
            chitiethoadonnhaps = new HashSet<chitiethoadonnhap>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int mahoadonnhap { get; set; }

        public int mancc { get; set; }

        [StringLength(255)]
        public string ngaynhap { get; set; }

        public int? tongtien { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int manv { get; set; }
        [JsonIgnore]
        [XmlIgnore]

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitiethoadonnhap> chitiethoadonnhaps { get; set; }

        public virtual nhacungcap nhacungcap { get; set; }

        public virtual nhanvien nhanvien { get; set; }
    }
}

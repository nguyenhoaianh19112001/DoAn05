namespace Sam.Models
{
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Xml.Serialization;

    [Table("sanpham")]
    public partial class sanpham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public sanpham()
        {
            chitietdonhangs = new HashSet<chitietdonhang>();
        }

        [Key]
/*        [DatabaseGenerated(DatabaseGeneratedOption.None)]
*/        public int masp { get; set; }

        public string tensp { get; set; }

/*        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
*/        public int ? maloai { get; set; }

        public int? soluong { get; set; }



        [StringLength(250)]
        public string anh { get; set; }

        [StringLength(1000)]
        public string mota { get; set; }

        public int? dongia { get; set; }
        [NotMapped]
        public string tenloai { get; set; }
        [JsonIgnore]
        [XmlIgnore]

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitietdonhang> chitietdonhangs { get; set; }

        public virtual loaisp loaisp { get; set; }
    }
}

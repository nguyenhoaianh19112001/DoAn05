namespace Sam.Models
{
    using Newtonsoft.Json;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Xml.Serialization;

    [Table("donhang")]
    public partial class donhang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public donhang()
        {
            chitietdonhangs = new HashSet<chitietdonhang>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int madonhang { get; set; }

        public int? makh { get; set; }

        public string diachi { get; set; }
        public string tenkh { get; set; }
        public string ghichu { get; set; }

        [StringLength(10)]
        public string sodienthoai { get; set; }

        [StringLength(50)]
        public string ngaydat { get; set; }

        public string trangthaidon { get; set; }

        public int? tongtien { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int? manv { get; set; }
        [JsonIgnore]
        [XmlIgnore]

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chitietdonhang> chitietdonhangs { get; set; }

        public virtual khachhang khachhang { get; set; }

        public virtual nhanvien nhanvien { get; set; }
    }
}

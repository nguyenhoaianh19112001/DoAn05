namespace Sam.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("giohang")]
    public partial class giohang
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int magiohang { get; set; }

        [StringLength(255)]
        public string ngaymua { get; set; }

        public int? tongtien { get; set; }

        [StringLength(300)]
        public string diachi { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int makh { get; set; }

        public virtual khachhang khachhang { get; set; }
    }
}

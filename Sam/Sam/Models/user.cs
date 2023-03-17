namespace Sam.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("user")]
    public partial class user
    {
        [Key]
        public int ma { get; set; }

        [StringLength(100)]
        public string tendangnhap { get; set; }

        [StringLength(100)]
        public string matkhau { get; set; }
    }
}

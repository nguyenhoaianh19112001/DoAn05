namespace Sam.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("chitiethoadonnhap")]
    public partial class chitiethoadonnhap
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int machitiethdn { get; set; }

        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int mahoadonnhap { get; set; }

        public int? soluong { get; set; }

        public int? dongia { get; set; }

        public virtual hoadonnhap hoadonnhap { get; set; }
    }
}

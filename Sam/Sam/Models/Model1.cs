using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace Sam.Models
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<chitietdonhang> chitietdonhangs { get; set; }
        public virtual DbSet<chitiethoadonnhap> chitiethoadonnhaps { get; set; }
        public virtual DbSet<donhang> donhangs { get; set; }
        public virtual DbSet<giohang> giohangs { get; set; }
        public virtual DbSet<hoadonnhap> hoadonnhaps { get; set; }
        public virtual DbSet<khachhang> khachhangs { get; set; }
        public virtual DbSet<loaisp> loaisps { get; set; }
        public virtual DbSet<nhacungcap> nhacungcaps { get; set; }
        public virtual DbSet<nhanvien> nhanviens { get; set; }
        public virtual DbSet<sanpham> sanphams { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<user> users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<donhang>()
                .Property(e => e.sodienthoai)
                .IsFixedLength();

            modelBuilder.Entity<donhang>()
                .HasMany(e => e.chitietdonhangs)
                .WithRequired(e => e.donhang)
                .WillCascadeOnDelete(false);

      

            modelBuilder.Entity<hoadonnhap>()
                .HasMany(e => e.chitiethoadonnhaps)
                .WithRequired(e => e.hoadonnhap)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<khachhang>()
                .Property(e => e.sodienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<khachhang>()
                .HasMany(e => e.donhangs)
                .WithRequired(e => e.khachhang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<khachhang>()
                .HasMany(e => e.giohangs)
                .WithRequired(e => e.khachhang)
                .WillCascadeOnDelete(false);

            /*  modelBuilder.Entity<LoaiSanPham>()
                  .HasMany(e => e.SanPhams)
                  .WithOptional(e => e.LoaiSanPham)
                  .HasForeignKey(e => e.MALOAI);

  */
            modelBuilder.Entity<loaisp>()
                .HasMany(e => e.sanphams)
                .WithOptional(e => e.loaisp)
.WillCascadeOnDelete(false);


          

            modelBuilder.Entity<nhacungcap>()
                .Property(e => e.dienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<nhacungcap>()
                .HasMany(e => e.hoadonnhaps)
                .WithRequired(e => e.nhacungcap)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<nhanvien>()
                .Property(e => e.sodienthoai)
                .IsUnicode(false);

            modelBuilder.Entity<nhanvien>()
                .HasMany(e => e.donhangs)
                .WithRequired(e => e.nhanvien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<nhanvien>()
                .HasMany(e => e.hoadonnhaps)
                .WithRequired(e => e.nhanvien)
                .WillCascadeOnDelete(false);

            /*modelBuilder.Entity<sanpham>()
                .HasMany(e => e.chitietdonhangs)
               .WithOptional(e => e.sanpham)
                .HasForeignKey(e => e.masp);

            modelBuilder.Entity<sanpham>().ToTable("");
*/

            modelBuilder.Entity<user>()
                .Property(e => e.tendangnhap)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.matkhau)
                .IsUnicode(false);
        }
    }
}

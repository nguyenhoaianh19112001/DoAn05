using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;
using System.Web.Http.Description;
using Sam.Models;

namespace Sam.Controllers 
{
    public class sanphamsController : ApiController
    {
        private Model1 db = new Model1();

        // GET: api/sanphams
        public IQueryable<Object> Getsanphams()
        {
            return db.sanphams.Join(db.loaisps,
                                    a=>a.maloai,
                                    b=>b.maloai,
                                    (a, b) => new {
                                        masp=a.masp,
                                        tensp=a.tensp,
                                        maloai = a.maloai,
                                        soluong=a.soluong,
                                        anh =a.anh,
                                        mota = a.mota,
                                        dongia = a.dongia,
                                        tenloai=b.tenloai});
        }

        // GET: api/sanphams/5
        [ResponseType(typeof(sanpham))]
        public IHttpActionResult Getsanpham(int id)
        {
            sanpham sanpham = db.sanphams.Find(id);
            if (sanpham == null)
            {
                return NotFound();
            }

            return Ok(sanpham);
        }

        // PUT: api/sanphams/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putsanpham(int id, sanpham sanpham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != sanpham.masp)
            {
                return BadRequest();
            }

            db.Entry(sanpham).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!sanphamExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/sanphams
        [ResponseType(typeof(sanpham))]
        public IHttpActionResult Postsanpham(sanpham sanpham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.sanphams.Add(sanpham);
            db.SaveChanges();

          /*  try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (sanphamExists(sanpham.masp))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }*/

            return CreatedAtRoute("DefaultApi", new { id = sanpham.masp }, sanpham);
        }

        // DELETE: api/sanphams/5
        [ResponseType(typeof(sanpham))]
        public IHttpActionResult Deletesanpham(int id)
        {
            sanpham sanpham = db.sanphams.Find(id);
            if (sanpham == null)
            {
                return NotFound();
            }

            db.sanphams.Remove(sanpham);
            db.SaveChanges();

            return Ok(sanpham);
        }

        /* [Route("api/sanphams/LocTheoLoai")]
         public HttpResponseMessage GetSanPhamTheoLoai(int maloai)
         {
             using (Model1 db = new Model1())
             {
                 var list = db.sanphams.Where(sp => sp.maloai == maloai).OrderByDescending(sp => sp.masp).ToList();
                 return Request.CreateResponse(HttpStatusCode.OK, list);
             }
         }*/
        [Route("api/sanphams/LocTheoLoai/{maloai}")]
        public async Task<IHttpActionResult> GetSanPhamTheoLoai(int maloai)
        {
            
                var list = await db.sanphams.Where(sp => sp.maloai == maloai)
                .OrderByDescending(sp => sp.masp).ToListAsync();
               return Ok(list);
           
        }

        /*try
                    {
                        using (Model1 db = new Model1())
                        {
                            var list = db.sanphams.Where(sp => sp.maloai == maloai).OrderByDescending(sp => sp.masp).ToList();
                            return Request.CreateResponse(HttpStatusCode.OK, list);
                        }

                    }
                    catch(DbEntityValidationException e)
                    {
                        Console.WriteLine(e);
                        return Request.CreateResponse(HttpStatusCode.OK);

                    }*/
        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        [Route("api/sanphams/savefile")]
        public string SaveFile()
        {
            try
            {
                var httpRequest = HttpContext.Current.Request;
                var postedFile = httpRequest.Files[0];
                string fileName = postedFile.FileName;
                var physicalPath = HttpContext.Current.Server.MapPath("~/Photos/" + fileName);

                postedFile.SaveAs(physicalPath);
                return fileName;
            }
            catch
            {
                return "empty photo";
            }
        }
        private bool sanphamExists(int id)
        {
            return db.sanphams.Count(e => e.masp == id) > 0;
        }
    }
}
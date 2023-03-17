using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Sam.Models;

namespace Sam.Controllers
{
    public class nhanviensController : ApiController
    {
        private Model1 db = new Model1();

        // GET: api/nhanviens
        public IQueryable<nhanvien> Getnhanviens()
        {
            return db.nhanviens;
        }

        // GET: api/nhanviens/5
        [ResponseType(typeof(nhanvien))]
        public IHttpActionResult Getnhanvien(int id)
        {
            nhanvien nhanvien = db.nhanviens.Find(id);
            if (nhanvien == null)
            {
                return NotFound();
            }

            return Ok(nhanvien);
        }

        // PUT: api/nhanviens/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putnhanvien(int id, nhanvien nhanvien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != nhanvien.manv)
            {
                return BadRequest();
            }

            db.Entry(nhanvien).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!nhanvienExists(id))
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

        // POST: api/nhanviens
        [ResponseType(typeof(nhanvien))]
        public IHttpActionResult Postnhanvien(nhanvien nhanvien)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.nhanviens.Add(nhanvien);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = nhanvien.manv }, nhanvien);
        }

        // DELETE: api/nhanviens/5
        [ResponseType(typeof(nhanvien))]
        public IHttpActionResult Deletenhanvien(int id)
        {
            nhanvien nhanvien = db.nhanviens.Find(id);
            if (nhanvien == null)
            {
                return NotFound();
            }

            db.nhanviens.Remove(nhanvien);
            db.SaveChanges();

            return Ok(nhanvien);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool nhanvienExists(int id)
        {
            return db.nhanviens.Count(e => e.manv == id) > 0;
        }
    }
}
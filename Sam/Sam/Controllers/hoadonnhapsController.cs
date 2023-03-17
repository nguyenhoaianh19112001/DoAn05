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
    public class hoadonnhapsController : ApiController
    {
        private Model1 db = new Model1();

        // GET: api/hoadonnhaps
        public IQueryable<hoadonnhap> Gethoadonnhaps()
        {
            return db.hoadonnhaps;
        }

        // GET: api/hoadonnhaps/5
        [ResponseType(typeof(hoadonnhap))]
        public IHttpActionResult Gethoadonnhap(int id)
        {
            hoadonnhap hoadonnhap = db.hoadonnhaps.Find(id);
            if (hoadonnhap == null)
            {
                return NotFound();
            }

            return Ok(hoadonnhap);
        }

        // PUT: api/hoadonnhaps/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Puthoadonnhap(int id, hoadonnhap hoadonnhap)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hoadonnhap.mahoadonnhap)
            {
                return BadRequest();
            }

            db.Entry(hoadonnhap).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!hoadonnhapExists(id))
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

        // POST: api/hoadonnhaps
        [ResponseType(typeof(hoadonnhap))]
        public IHttpActionResult Posthoadonnhap(hoadonnhap hoadonnhap)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.hoadonnhaps.Add(hoadonnhap);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (hoadonnhapExists(hoadonnhap.mahoadonnhap))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = hoadonnhap.mahoadonnhap }, hoadonnhap);
        }

        // DELETE: api/hoadonnhaps/5
        [ResponseType(typeof(hoadonnhap))]
        public IHttpActionResult Deletehoadonnhap(int id)
        {
            hoadonnhap hoadonnhap = db.hoadonnhaps.Find(id);
            if (hoadonnhap == null)
            {
                return NotFound();
            }

            db.hoadonnhaps.Remove(hoadonnhap);
            db.SaveChanges();

            return Ok(hoadonnhap);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool hoadonnhapExists(int id)
        {
            return db.hoadonnhaps.Count(e => e.mahoadonnhap == id) > 0;
        }
    }
}
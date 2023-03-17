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
    public class nhacungcapsController : ApiController
    {
        private Model1 db = new Model1();

        // GET: api/nhacungcaps
        public IQueryable<nhacungcap> Getnhacungcaps()
        {
            return db.nhacungcaps;
        }

        // GET: api/nhacungcaps/5
        [ResponseType(typeof(nhacungcap))]
        public IHttpActionResult Getnhacungcap(int id)
        {
            nhacungcap nhacungcap = db.nhacungcaps.Find(id);
            if (nhacungcap == null)
            {
                return NotFound();
            }

            return Ok(nhacungcap);
        }

        // PUT: api/nhacungcaps/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putnhacungcap(int id, nhacungcap nhacungcap)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != nhacungcap.mancc)
            {
                return BadRequest();
            }

            db.Entry(nhacungcap).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!nhacungcapExists(id))
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

        // POST: api/nhacungcaps
        [ResponseType(typeof(nhacungcap))]
        public IHttpActionResult Postnhacungcap(nhacungcap nhacungcap)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.nhacungcaps.Add(nhacungcap);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = nhacungcap.mancc }, nhacungcap);
        }

        // DELETE: api/nhacungcaps/5
        [ResponseType(typeof(nhacungcap))]
        public IHttpActionResult Deletenhacungcap(int id)
        {
            nhacungcap nhacungcap = db.nhacungcaps.Find(id);
            if (nhacungcap == null)
            {
                return NotFound();
            }

            db.nhacungcaps.Remove(nhacungcap);
            db.SaveChanges();

            return Ok(nhacungcap);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool nhacungcapExists(int id)
        {
            return db.nhacungcaps.Count(e => e.mancc == id) > 0;
        }
    }
}
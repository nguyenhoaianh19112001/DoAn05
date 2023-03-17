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
    public class donhangsController : ApiController
    {
        private Model1 db = new Model1();

        // GET: api/donhangs
        public IQueryable<donhang> Getdonhangs()
        {
            return db.donhangs;
        }

        // GET: api/donhangs/5
        [ResponseType(typeof(donhang))]
        public IHttpActionResult Getdonhang(int id)
        {
            donhang donhang = db.donhangs.Find(id);
            if (donhang == null)
            {
                return NotFound();
            }

            return Ok(donhang);
        }

        // PUT: api/donhangs/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putdonhang(int id, donhang donhang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != donhang.madonhang)
            {
                return BadRequest();
            }

            db.Entry(donhang).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!donhangExists(id))
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

        // POST: api/donhangs
        [ResponseType(typeof(donhang))]
        public IHttpActionResult Postdonhang(donhang donhang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.donhangs.Add(donhang);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (donhangExists(donhang.madonhang))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = donhang.madonhang }, donhang);
        }

        // DELETE: api/donhangs/5
        [ResponseType(typeof(donhang))]
        public IHttpActionResult Deletedonhang(int id)
        {
            donhang donhang = db.donhangs.Find(id);
            if (donhang == null)
            {
                return NotFound();
            }

            db.donhangs.Remove(donhang);
            db.SaveChanges();

            return Ok(donhang);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool donhangExists(int id)
        {
            return db.donhangs.Count(e => e.madonhang == id) > 0;
        }
    }
}
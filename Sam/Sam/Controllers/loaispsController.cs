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
    public class loaispsController : ApiController
    {
        private Model1 db = new Model1();

        // GET: api/loaisps
        public IQueryable<loaisp> Getloaisps()
        {
            return db.loaisps;
        }

        // GET: api/loaisps/5
        [ResponseType(typeof(loaisp))]
        public IHttpActionResult Getloaisp(int id)
        {
            loaisp loaisp = db.loaisps.Find(id);
            if (loaisp is null)
            {
                return NotFound();
            }

            return Ok(loaisp);
        }

        // PUT: api/loaisps/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putloaisp(int id, loaisp loaisp)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != loaisp.maloai)
            {
                return BadRequest();
            }

            db.Entry(loaisp).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!loaispExists(id))
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

        // POST: api/loaisps
        [ResponseType(typeof(loaisp))]
        public IHttpActionResult Postloaisp(loaisp loaisp)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.loaisps.Add(loaisp);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = loaisp.maloai }, loaisp);
        }

        // DELETE: api/loaisps/5
        [ResponseType(typeof(loaisp))]
        public IHttpActionResult Deleteloaisp(int id)
        {
            loaisp loaisp = db.loaisps.Find(id);
            if (loaisp == null)
            {
                return NotFound();
            }

            db.loaisps.Remove(loaisp);
            db.SaveChanges();

            return Ok(loaisp);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool loaispExists(int id)
        {
            return db.loaisps.Count(e => e.maloai == id) > 0;
        }
    }
}
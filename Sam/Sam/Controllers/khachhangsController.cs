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
    public class khachhangsController : ApiController
    {
        private Model1 db = new Model1();

        // GET: api/khachhangs
        public IQueryable<khachhang> Getkhachhangs()
        {
            return db.khachhangs;
        }

        // GET: api/khachhangs/5
        [ResponseType(typeof(khachhang))]
        public IHttpActionResult Getkhachhang(int id)
        {
            khachhang khachhang = db.khachhangs.Find(id);
            if (khachhang == null)
            {
                return NotFound();
            }

            return Ok(khachhang);
        }

        // PUT: api/khachhangs/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putkhachhang(int id, khachhang khachhang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != khachhang.makh)
            {
                return BadRequest();
            }

            db.Entry(khachhang).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!khachhangExists(id))
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

        // POST: api/khachhangs
        [ResponseType(typeof(khachhang))]
        public IHttpActionResult Postkhachhang(khachhang khachhang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.khachhangs.Add(khachhang);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = khachhang.makh }, khachhang);
        }

        // DELETE: api/khachhangs/5
        [ResponseType(typeof(khachhang))]
        public IHttpActionResult Deletekhachhang(int id)
        {
            khachhang khachhang = db.khachhangs.Find(id);
            if (khachhang == null)
            {
                return NotFound();
            }

            db.khachhangs.Remove(khachhang);
            db.SaveChanges();

            return Ok(khachhang);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool khachhangExists(int id)
        {
            return db.khachhangs.Count(e => e.makh == id) > 0;
        }
    }
}
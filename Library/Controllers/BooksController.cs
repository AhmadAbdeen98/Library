using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using BooksDataAccess;

namespace Library.Controllers
{
    public class BooksController : ApiController
    {
        // GET: Books
        public IEnumerable<Book> Get()
        {
            using (BooksDetailsEntities entities = new BooksDetailsEntities())
            {
                return (IEnumerable<Book>)entities.vw_books.ToList();
            }
        }

        /*public Book Get(int id)
        {
            using (BooksDetailsEntities entities = new BooksDetailsEntities())
            {
                return entities.vw_books.FirstOrDefault(e => e.ID == id);
            }
        }*/
    }
}
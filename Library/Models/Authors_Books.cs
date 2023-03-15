using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Library.Models
{
    public class Authors_Books
    {
        [Key]
        public int AuthorId { get; set; }

        [Key]
        public int BookId { get; set; }

        public virtual Authors_Books Author { get; set; }

        public virtual Authors_Books Book { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Library.Models
{
    public class Categories
    {
        [Key]
        public int Id { get; set; }

        public int ParentId { get; set; }

        [Required]
        [MaxLength(150)]
        public int Name { get; set; }
    }
}
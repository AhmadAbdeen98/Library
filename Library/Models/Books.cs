using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Library.Models
{
    public class Books
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(250)]
        public string Title { get; set; }

        [Required]
        [ForeignKey("Categories")]
        public int CategoryId { get; set; }
        public virtual Categories Category { get; set; }

        [MaxLength(500)]
        public string Description { get; set; }
    }
}
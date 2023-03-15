using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BooksDataAccess
{
    public partial class Book
    {
        public int ID { get; set; }

        public string Title { get; set; }

        public int CategoryID { get; set; }

        public string CategoryName { get; set; }

        public int SubCategoryID { get; set; }

        public string SubCategoryName { get; set; }
    }
}

using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class SubCategory
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string Image { get; set; }


        [ForeignKey("Category")]
        public int CatId { get; set; }
        public virtual Category Category { get; set; }

        public virtual List<Produc_Supplier> Produc_Suppliers { get; set; }
    }
}

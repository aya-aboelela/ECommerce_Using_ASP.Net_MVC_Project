using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public virtual List<Produc_Supplier>? Produc_Suppliers { get; set; }
    }
}

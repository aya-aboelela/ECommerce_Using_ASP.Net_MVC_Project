using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class Cart
    {
        public int Id { get; set; }
        public int Quantity { get; set; }
        public int Total { get; set; }


        [ForeignKey("Customer")]
        public string CustomerId { get; set; }
        public virtual Customer Customer { get; set; }


        [ForeignKey("Produc_Supplier")]
        public int Produc_SupplierId { get; set; }
        public virtual Produc_Supplier Produc_Supplier { get; set; }

    }
}

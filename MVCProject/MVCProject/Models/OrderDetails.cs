using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class OrderDetails
    {
        public int Id { get; set; }

        [ForeignKey("Customer")]
        public string CustomerId { get; set; }
        public virtual Customer Customer { get; set; }

        [ForeignKey("Produc_Supplier")]
        public int Produc_SupplierId { get; set; }
        public virtual Produc_Supplier Produc_Supplier { get; set; }

        [ForeignKey("Order")]
        public int OrderId { get; set; }
        public virtual Order Order { get; set; }

    }
}

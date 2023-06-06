using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class Produc_Supplier
    {
        public int Id { get; set; }

        public int Quantity { get; set; }  // Total quentity of product for one supplier

        public int Price { get; set; }   // For one product

        public string Image { get; set; }
        public string Description { get; set; }


        [ForeignKey("Supplier")]
        public int SupplierId { get; set; }
        public virtual Supplier Supplier { get; set; }


        [ForeignKey("Product")]
        public int ProductId { get; set; }
        public virtual Product Product { get; set; }


        [ForeignKey("SubCategory")]
        public int SubCatId { get; set; }
        public virtual SubCategory SubCategory { get; set; }

		[ForeignKey("Category")]
		public int CatId { get; set; }
		public virtual Category Category { get; set; }

		public virtual List<OrderDetails> OrderDetails { get; set; }

        public virtual List<Comment> Comments { get; set; }

        public virtual List<Cart> Carts { get; set; }

    }
}

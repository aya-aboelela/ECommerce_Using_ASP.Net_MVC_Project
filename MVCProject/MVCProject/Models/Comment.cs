using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class Comment
    {
        public int Id { get; set; }
        public string Text { get; set; }
        public string UserName { get; set; }


        [ForeignKey("Produc_Suppliers")]

        public int Prod_SupId { get; set; }
        public virtual Produc_Supplier Produc_Suppliers { get; set; }

		[ForeignKey("Customer")]
		public string CustomerId { get; set; }
		public virtual Customer Customer { get; set; }
	}
}

using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class Customer
    {
        public string Id { get; set; }

        [ForeignKey("ApplicationUser")]

        public string ApplicationUserId { get; set; }
        public virtual ApplicationUser ApplicationUser { get; set; }

        //public virtual List<OrderDetails> OrderDetails { get; set; }
        public virtual List<Cart> Carts { get; set; }
		public virtual List<Comment> Comments { get; set; }


	}
}

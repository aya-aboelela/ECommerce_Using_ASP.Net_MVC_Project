using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class Order
    {
		public int Id { get; set; }
		[DataType(DataType.Date)]
		public DateTime Date { get; set; } ///Order Date
		[DataType(DataType.Date)]
		public DateTime ShipDate { get; set; }
		public int Totalprice { get; set; }

		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string StreetAddress { get; set; }

		[MaxLength(11, ErrorMessage = "Phone Number Must be 11 Numbers")]
		public string Phone { get; set; }

		public string Email { get; set; }

		public virtual List<OrderDetails>? OrderDetails { get; set; }
	}
}

using System.ComponentModel.DataAnnotations;

namespace MVCProject.Models
{
    public class Supplier
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Image { get; set; }

        [RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "E-mail is not valid")]
        public string Email { get; set; }

        [MaxLength(11,ErrorMessage ="Phone Number Must be 11 Numbers")]
        public string PhoneNumber { get; set; }
        public string Address { get; set; }

        public virtual List<Produc_Supplier> Produc_Suppliers { get; set; }
    }
}

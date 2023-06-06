using System.ComponentModel.DataAnnotations;

namespace MVCProject.Models
{
    public class Account
    {
        public string Username { get; set; }
        [DataType(DataType.Password)]
        public string Password { get; set; }
    }
}

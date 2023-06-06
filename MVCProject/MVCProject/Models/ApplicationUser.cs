using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations.Schema;

namespace MVCProject.Models
{
    public class ApplicationUser:IdentityUser
    {
        //add any extra property
        public string Address { get; set; }
        public string FirstName { get; set; }
     
        public string LastName { get; set; }

        public string Gender { get; set; }
    }
}

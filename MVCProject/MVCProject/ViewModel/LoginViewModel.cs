using System.ComponentModel.DataAnnotations;

namespace MVCProject.ViewModel
{
    public class LoginViewModel
    {
        //[RegularExpression("^[a-zA-Z0-9_\\.-]+@([a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,6}$", ErrorMessage = "E-mail is not valid")]
        public string Username { get; set; }

        [DataType(DataType.Password)]
        public string Password { get; set; }

        public bool Rememberme { get; set; }
    }
}

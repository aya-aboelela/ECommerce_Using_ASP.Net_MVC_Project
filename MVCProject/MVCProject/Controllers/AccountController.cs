using Microsoft.AspNetCore.Mvc;
using MVCProject.Models;
using MVCProject.ViewModel;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
namespace MVCProject.Controllers
{
    public class AccountController : Controller
    {
        private readonly UserManager<ApplicationUser> userManager;
        private readonly SignInManager<ApplicationUser> signInManager;
        Context context = new Context();
        public AccountController
          (UserManager<ApplicationUser> _userManager, SignInManager<ApplicationUser> signInManager)
        {
            this.userManager = _userManager;
            this.signInManager = signInManager;
        }
        public IActionResult Registration()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Registration(RegistrationViewModel newUserVM)
        {
            if (ModelState.IsValid)
            {
                
                ApplicationUser userModel = new ApplicationUser();
                userModel.UserName = newUserVM.UserName;
                userModel.Gender= newUserVM.Gender; 
                userModel.FirstName= newUserVM.FirstName;
                userModel.LastName = newUserVM.LastName;
                userModel.PasswordHash = newUserVM.Password;
                userModel.Address = newUserVM.Address;

                
                IdentityResult result =
                    await userManager.CreateAsync(userModel, newUserVM.Password);//object insert db

                if (result.Succeeded)
                {
                    //assign user to Admin Role
                    await userManager.AddToRoleAsync(userModel,"user");//insert row UserRole
                    //create cookie
                    List<Claim> addClaim = new List<Claim>();
                    addClaim.Add(new Claim("MVCProject", "43"));
                    await signInManager.SignInWithClaimsAsync(userModel, false, addClaim);
                    await  signInManager.SignInAsync(userModel, false); //session cookie register
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    //some issue ==>send user view
                    foreach (var item in result.Errors)
                    {
                        ModelState.AddModelError("", item.Description);
                    }
                }
            }
            return View(newUserVM);
        }
        public IActionResult Login()
        {
            return View();  
        }
        [HttpPost]
        
        [ValidateAntiForgeryToken]
        public async  Task <IActionResult> Login(LoginViewModel loginVM)//username,passsord //remberme
        {
            if (ModelState.IsValid)
            {
                ApplicationUser userModel =
                    await userManager.FindByNameAsync(loginVM.Username);
               
              
                if (userModel != null)
                {
                    //cookie
                    Microsoft.AspNetCore.Identity.SignInResult rr =
                        await signInManager.PasswordSignInAsync(userModel, loginVM.Password, loginVM.Rememberme, false);
                    
                    //userManager.GetUserId(User).ToString();
                    //check cookie
                    if (rr.Succeeded)
                        return RedirectToAction("Index","Home");
                    else
                    {
                        ModelState.AddModelError("", "Wrong Password ,Please Enter The Correct Password");
                        return View(loginVM);
                    }

                }

                else
                {
                    ModelState.AddModelError("", "Wrong Data !!");
                }

            }
            return View(loginVM);

        }
 
        public async Task<IActionResult> signOut()
        {
            await signInManager.SignOutAsync();
            return RedirectToAction("Login");
        }

    }
}

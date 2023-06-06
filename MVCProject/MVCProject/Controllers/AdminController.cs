using Microsoft.AspNetCore.Mvc;
using MVCProject.Models;
using MVCProject.ViewModel;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using MVCProject.Repository;

namespace MVCProject.Controllers
{

   
    public class AdminController : Controller
    {
        private readonly UserManager<ApplicationUser> userManager;
        private readonly SignInManager<ApplicationUser> signInManager;
        Context context=new Context();
        public AdminController
          (UserManager<ApplicationUser> _userManager, SignInManager<ApplicationUser> signInManager)
        {
            this.userManager = _userManager;
            this.signInManager = signInManager;
        }
        public IActionResult Dashboard()
        {
            return View();
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
                userModel.Gender = newUserVM.Gender;
                userModel.FirstName = newUserVM.FirstName;
                userModel.LastName = newUserVM.LastName;
                userModel.PasswordHash = newUserVM.Password;
                userModel.Address = newUserVM.Address;


                IdentityResult result =
                    await userManager.CreateAsync(userModel, newUserVM.Password);//object insert db

                if (result.Succeeded)
                {
                    //assign user to Admin Role
                    await userManager.AddToRoleAsync(userModel, "admin");//insert row UserRole
                    //create cookie
                    List<Claim> addClaim = new List<Claim>();
                    addClaim.Add(new Claim("Admin", "43"));
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
      //  [Authorize(Roles = "admin")]
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
       // [Authorize(Roles = "admin")]
        public async Task<IActionResult> Login(LoginViewModel loginVM)//username,passsord //remberme
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

                    //check cookie
                    if (rr.Succeeded)
                        return RedirectToAction("Dashboard","Admin");
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
        [Authorize(Roles = "admin")]
        public async Task<IActionResult> signOut()
        {
            await signInManager.SignOutAsync();
            return RedirectToAction("Login");
        }
        [Authorize(Roles = "admin")]
        public IActionResult AddAnotherAdmin()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
       // [Authorize(Roles = "admin")]
        public async Task<IActionResult> AddAnotherAdmin(RegistrationViewModel newUserVM)
        {
            if (ModelState.IsValid)
            {
                ApplicationUser userModel = new ApplicationUser();
                userModel.UserName = newUserVM.UserName;
                userModel.Gender = newUserVM.Gender;
                userModel.FirstName = newUserVM.FirstName;
                userModel.LastName = newUserVM.LastName;
                userModel.PasswordHash = newUserVM.Password;
                userModel.Address = newUserVM.Address;
                IdentityResult result =
                    await userManager.CreateAsync(userModel, newUserVM.Password);//object insert db

                if (result.Succeeded)
                {
                    //assign user to Admin Role
                    await userManager.AddToRoleAsync(userModel,"admin");//insert row UserRole
                    //create cookie
                    List<Claim> addClaim = new List<Claim>();

                    addClaim.Add(new Claim("Admin", "43"));
                    await signInManager.SignInWithClaimsAsync(userModel, false, addClaim);
                    await signInManager.SignInAsync(userModel, false); //session cookie register
                    return RedirectToAction();
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
    }
}

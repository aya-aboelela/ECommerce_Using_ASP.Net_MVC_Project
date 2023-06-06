using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MVCProject.Models;
using MVCProject.Repository;
using MVCProject.ViewModel;
using System.Diagnostics;

namespace MVCProject.Controllers
{
     public class HomeController : Controller
    {

        Context context = new Context();
        private readonly ILogger<HomeController> _logger;
        private readonly UserManager<ApplicationUser> userManager;
        private readonly SignInManager<ApplicationUser> signInManager;

        public HomeController(ILogger<HomeController> logger, Context context, UserManager<ApplicationUser> _userManager, SignInManager<ApplicationUser> signInManager)
        {
            this.context = context;
            _logger = logger;
            this.userManager = _userManager;
            this.signInManager = signInManager;
        }

        public IActionResult Index()
        {
            HomeViewModel homeView = new HomeViewModel();

            homeView.categories = context.Categories.ToList();
            homeView.produc_Suppliers = context.Produc_Suppliers.Include("Product").Select(p=>p).Take(8).ToList();
            homeView.suppliers = context.Suppliers.Select(p => p).Take(6).ToList();

            return View(homeView);
        }
        public IActionResult Login()
        {
            return View();
        }
        [HttpPost]

        [ValidateAntiForgeryToken]
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

        public IActionResult GoTo()
        {
            return View();
        }
        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
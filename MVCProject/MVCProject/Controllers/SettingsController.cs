using Microsoft.AspNetCore.Mvc;
using MVCProject.Models;
using MVCProject.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using MVCProject.ViewModel;
using System.Security.Claims;


namespace MVCProject.Controllers
{
    //[Authorize(Roles="admin")]
    public class settingsController : Controller
	{
        private readonly UserManager<ApplicationUser> userManager;
        private readonly SignInManager<ApplicationUser> signInManager;
        private readonly RoleManager<IdentityRole> roleManager;
        ISubCategoryRepository subCategoryRepositry;
		ICategoryRepository categoryRepositry;
		IProduct_SupplierRepository Iproduct_SupplierRepository;
		IProductRepository IproductRepository;
		ISupplierRepository IsupplierRepository;
        //Supplier
        
        public settingsController(ISubCategoryRepository _subCategoryRepository, ICategoryRepository _categoryRepositry
			,IProduct_SupplierRepository _Iproduct_SupplierRepository,
		IProductRepository _IproductRepository, UserManager<ApplicationUser> _userManager, SignInManager<ApplicationUser> signInManager,ISupplierRepository _IsupplierRepository, RoleManager<IdentityRole> RoleManager)

		{
			subCategoryRepositry = _subCategoryRepository;
			categoryRepositry = _categoryRepositry;
			IproductRepository = _IproductRepository;
			Iproduct_SupplierRepository = _Iproduct_SupplierRepository;
			IsupplierRepository = _IsupplierRepository;
            this.roleManager = RoleManager;
            this.userManager = _userManager;
            this.signInManager = signInManager;
        }
		public IActionResult GetAllCategory()
		{
			List<Category> categoryModel = categoryRepositry.GetAll();

			return View(categoryModel);
		}


		public IActionResult GetAllSubCategory()
		{
			List<SubCategory> subCategoryModel = subCategoryRepositry.GetAll();
			return View(subCategoryModel);
		}
		public IActionResult GetAllProductSupplier()
		{

			List<Produc_Supplier> Produc_Supplier = Iproduct_SupplierRepository.GetAll();
			return View(Produc_Supplier);

		}
		public IActionResult GetAllProduct()
		{
			List<Product> product= IproductRepository.GetAll();
			return View(product);
		}
		public IActionResult GetAllSuppliers()
		{
			List<Supplier> supplier = IsupplierRepository.GetAll();
			return View(supplier);
		}
        public IActionResult New()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> New(RoleViewModel roleVM)
        {
            if (ModelState.IsValid)
            {
                IdentityRole roleModel = new IdentityRole();
                roleModel.Name = roleVM.RoleName;
                IdentityResult result = await roleManager.CreateAsync(roleModel);//unique
                if (result.Succeeded)
                {
                    return View();
                }
                else
                {
                    ModelState.AddModelError("", result.Errors.FirstOrDefault().Description);
                }

            }
            return View(roleVM);
        }


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
                    await userManager.AddToRoleAsync(userModel, "admin");//insert row UserRole
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

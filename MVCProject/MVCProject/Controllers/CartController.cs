using Microsoft.AspNetCore.CookiePolicy;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MVCProject.Models;
using MVCProject.Repository;
using System.Linq;

namespace MVCProject.Controllers
{
    public class CartController : Controller
    {
        ICartRepository cartRepository;
		private readonly UserManager<ApplicationUser> userManager;


		Context context = new Context();
        public CartController(ICartRepository cartRepository, Context context,UserManager<ApplicationUser> _userManager)//injection
        {
            this.cartRepository = cartRepository;
			this.userManager = _userManager;

			this.context = context;
        }
        public IActionResult Index()
        {
			//List<Produc_Supplier> products = ;
			var cart = context.Cart.Include(i => i.Produc_Supplier).ThenInclude(a => a.Product).ToList();
			return View(cart);
        }
		public IActionResult AddToCart(int id)
		{
            Produc_Supplier p = context.Produc_Suppliers.FirstOrDefault(p=>p.Id == id);
           
            Cart c = new Cart();
           
            c.Quantity = 1;
            c.Total = c.Quantity * p.Price;

            Customer D = new Customer();

            String userId = userManager.GetUserAsync(HttpContext.User).Result.Id;
            D.ApplicationUserId = userId;
         
            Customer E = context.Customers.FirstOrDefault(e => e.ApplicationUserId == userId);
            c.CustomerId = E.Id; 
            c.Produc_SupplierId = id;
            context.Cart.Add(c);
            context.SaveChanges();
            return RedirectToAction("Details","ProductSupplier", p);

		}

		public IActionResult Edit()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Edit(Produc_Supplier NewCartItem, int id)
        {
            if (NewCartItem.Id != null)
            {
                cartRepository.EditCart(NewCartItem, id);
                return View();

            }
            return View("Edit", NewCartItem);
        }
    }
}

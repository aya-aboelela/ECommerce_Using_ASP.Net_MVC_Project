using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using MVCProject.Hubs;
using MVCProject.Models;
using MVCProject.Repository;
using MVCProject.ViewModel;
using System.Data;

namespace MVCProject.Controllers
{
    //[Authorize(Roles = "admin")]
    public class ProductController : Controller
    {
        IProductRepository productRepository;

        Context context = new Context();
        public ProductController(IProductRepository productRepository, Context context)//injection
        {
            this.productRepository = productRepository;
            this.context = context;
        }

        public IActionResult New()
        {
            return View();
        }

        [HttpPost]
        public IActionResult New(Product product)
        {
            if (product.Name != null)
            {
                productRepository.Insert(product);
				return RedirectToAction("GetAllProduct", "settings");
			}
            else
            {
                ModelState.AddModelError("", "Data Is Not Valid...");
            }

            return View(product);
        }

        [HttpGet]
        public IActionResult Edit(int id)
        {
            Product product =
                productRepository.GetById(id);

            return View(product);
        }

        [HttpPost]
        public IActionResult Edit(Product NewProd, int id)
        {
            if (NewProd.Name != null)
            {
                productRepository.Update(NewProd, id);
				return RedirectToAction("GetAllProduct", "settings");
			}
			return View(NewProd);
        }

    }
}

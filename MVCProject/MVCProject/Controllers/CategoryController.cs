using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using MVCProject.Models;
using MVCProject.Repository;
using System.Data;

namespace MVCProject.Controllers
{
    //[Authorize(Roles = "admin")]
    public class CategoryController : Controller
	{
		ICategoryRepository categoryRepositry;
		public CategoryController(ICategoryRepository _categoryRepositry)
		{
			categoryRepositry = _categoryRepositry;
		}
		public IActionResult Index()
		{

			List<Category> categoryModel = categoryRepositry.GetAll();

			return View(categoryModel);
		}
		
        [HttpGet]
        public IActionResult Edit(int id)
        {
            //old 
            Category catModel = categoryRepositry.GetById(id);

            //view
            return View(catModel);
        }
        [HttpPost]
		public IActionResult Edit(Category newCat, [FromRoute] int id)
		{
			if (newCat.Name != null && newCat.Image != null)
			{
				categoryRepositry.Update(id, newCat);
				return RedirectToAction("GetAllCategory", "settings"); 
			}
			return View(newCat);
		}

	}
}


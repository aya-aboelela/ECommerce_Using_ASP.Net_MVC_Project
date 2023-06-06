using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using MVCProject.Models;
using MVCProject.Repository;
using System.Data;

namespace MVCProject.Controllers
{
    //[Authorize(Roles = "admin")]
    public class SubCategoryController : Controller
	{
		ISubCategoryRepository subCategoryRepositry;
		ICategoryRepository categoryRepositry;
		public SubCategoryController(ISubCategoryRepository _subCategoryRepository, ICategoryRepository _categoryRepositry)

		{
			subCategoryRepositry = _subCategoryRepository;
			categoryRepositry = _categoryRepositry;
		}
		public IActionResult Index(int id)
		{
			List<SubCategory> subCategoryModel = subCategoryRepositry.GetSubCategoriesByCategoryId(id);
			return View(subCategoryModel);
		}

		[HttpGet]
		public IActionResult Edit([FromRoute] int id)
		{
			//old 
			SubCategory subModel = subCategoryRepositry.GetById(id);
			List<Category> categoryList = categoryRepositry.GetAll();

			ViewData["Categories"] = categoryList;
			//view
			return View(subModel);
		}
		[HttpPost]
		public IActionResult Edit(SubCategory newSub, [FromRoute] int id)
		{
			if (newSub.Name != null && newSub.Image != null && newSub.CatId != null)
			{
				subCategoryRepositry.Update(id, newSub);
				return RedirectToAction("GetAllSubCategory", "settings");
			}

			List<Category> categoryList = categoryRepositry.GetAll();

			return View(newSub);
		}
	}
}


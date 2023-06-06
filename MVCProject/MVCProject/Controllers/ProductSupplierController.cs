using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;
using MVCProject.Hubs;
using MVCProject.Models;
using MVCProject.Repository;

namespace MVCProject.Controllers
{
    public class ProductSupplierController : Controller
    {
        IProduct_SupplierRepository product_SupplierRepository;

        IHubContext<ProductHub> hubContext;

        Context context = new Context();    // Will Replace it With SupplierRepo &  SubCatRepo

        public ProductSupplierController(IProduct_SupplierRepository product_SupplierRepository, IHubContext<ProductHub> hubContext, Context context)
        {
            this.product_SupplierRepository = product_SupplierRepository;
            this.hubContext = hubContext;
            this.context = context;
        }
       
        public IActionResult Index()
        {

            List<Produc_Supplier> Produc_Supplier = product_SupplierRepository.GetAll();           
            return View(Produc_Supplier);

        }

        public IActionResult Details([FromRoute]int id)
        {

			Produc_Supplier proModel = product_SupplierRepository.GetById(id);
			List<Comment> commentList = context.Comments.Where(c => c.Prod_SupId == id).ToList();
			ViewData["Comments"] = commentList;

			return View(proModel);
		}
		public IActionResult ShowProductBySubCategory([FromRoute]int id)
		{

			List<Produc_Supplier> Produc_Supplier = product_SupplierRepository.GetProductBySubCategoryId(id);
			return View(Produc_Supplier);

		}







		public IActionResult New()
        {
            ViewData["suppliers"] = context.Suppliers.ToList();
            ViewData["products"] = context.Products.ToList();
            ViewData["categories"] = context.Categories.ToList();
            ViewData["subCategories"] = context.SubCategories.ToList();
            return View();
        }

        [HttpPost]
        public IActionResult New(Produc_Supplier produc_Suppliers)
        {
            //if (ModelState.IsValid == true)
            if (produc_Suppliers.Quantity != null && produc_Suppliers.Price != null && produc_Suppliers.Image != null && produc_Suppliers.Description != null && produc_Suppliers.CatId !=null && produc_Suppliers.SupplierId !=null && produc_Suppliers.SubCatId !=null)

            {
                product_SupplierRepository.Insert(produc_Suppliers);

                //notify 
                hubContext.Clients.All.SendAsync("NewProductAdd", produc_Suppliers);
				return RedirectToAction("GetAllProductSupplier", "settings");
			}
            else
            {
                ModelState.AddModelError("", "Data Is Not Valid...");
            }

            ViewData["suppliers"] = context.Suppliers.ToList();
            ViewData["products"] = context.Products.ToList();
            ViewData["categories"] = context.Categories.ToList();
            ViewData["subCategories"] = context.SubCategories.ToList();

            return View(produc_Suppliers);
        }

        [HttpGet]
        public IActionResult Edit(int id)
        {
            Produc_Supplier produc_Supplier =
                product_SupplierRepository.GetById(id);

            ViewData["suppliers"] = context.Suppliers.ToList();
            ViewData["products"] = context.Products.ToList();
            ViewData["categories"] = context.Categories.ToList();
            ViewData["subCategories"] = context.SubCategories.ToList();

            return View(produc_Supplier);
        }

        [HttpPost]
        public IActionResult Edit(int id ,Produc_Supplier NewProd)
        {
            if (NewProd.Quantity != null && NewProd.Price !=null && NewProd.Image != null && NewProd.Description != null)

            {
                product_SupplierRepository.Update(id, NewProd);
				return RedirectToAction("GetAllProductSupplier","settings");
			}

            ViewData["suppliers"] = context.Suppliers.ToList();
            ViewData["products"] = context.Products.ToList();
            ViewData["categories"] = context.Categories.ToList();
            ViewData["subCategories"] = context.SubCategories.ToList();

            return View(NewProd);
        }

        public IActionResult Delete(int id)
        {
            product_SupplierRepository.Delete(id);

            return RedirectToAction("Index");
        }

    }
}

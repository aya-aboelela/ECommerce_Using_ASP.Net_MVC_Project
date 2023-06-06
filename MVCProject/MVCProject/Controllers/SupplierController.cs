using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;
using Microsoft.EntityFrameworkCore;
using MVCProject.Hubs;
using MVCProject.Models;
using MVCProject.Repository;
using System.Collections.Generic;
using System.Data;

namespace MVCProject.Controllers
{
    //[Authorize(Roles = "admin")]
    public class SupplierController : Controller
    {
        ISupplierRepository SupplierRepository;
        IHubContext<ProductHub> hubContext;

        Context context = new Context();    // Will Replace it With SupplierRepo &  SubCatRepo

        public SupplierController(ISupplierRepository _supplierRepo, IHubContext<ProductHub> hubContext) //injection
        {
            SupplierRepository = _supplierRepo;
            this.hubContext = hubContext;
            // Object Hub
        }
        [HttpGet]
        public IActionResult New()
        {

            return View(new Supplier());
        }

        [HttpPost]
        public IActionResult New(Supplier Suppliers)
        {
            if (Suppliers.Name != null && Suppliers.Address != null && Suppliers.PhoneNumber != null && Suppliers.Email != null)
            {
                SupplierRepository.Insert(Suppliers);

                //notify 
                hubContext.Clients.All.SendAsync("NewSupplierAdd", Suppliers);
                return RedirectToAction("GetAllSuppliers", "settings");
            }
            else
            {
                ModelState.AddModelError("", "Data Is Not Valid...");
            }


            return View(Suppliers);
        }

        [HttpGet]
        public IActionResult Edite(int id)
        {

            Supplier su = SupplierRepository.GetById(id);
            //view
            return View(su);
        }

        [HttpPost]
        public IActionResult Edite(Supplier Supplier, [FromRoute] int id)
        {
            //Supplier se=SupplierRepository.GetById(id);
            if (Supplier.Name != null && Supplier.Address != null && Supplier.PhoneNumber != null && Supplier.Email != null)
            {
                SupplierRepository.Update(id, Supplier);

                //notify 
                hubContext.Clients.All.SendAsync("NewUpdateDoneOnSupplier", Supplier);
                return RedirectToAction("GetAllSuppliers", "settings");

            }
            else
            {
                ModelState.AddModelError("", "Data Is Not Valid...");
            }
            // ViewData["Produc_Suppliers"] = context.Produc_Suppliers.ToList();

            return View(Supplier);
        }
        public IActionResult Delete(int id)
        {
            SupplierRepository.Delete(id);

            return RedirectToAction("Index");
        }
        public IActionResult GetAll()
        {
            List<Supplier> ls = SupplierRepository.GetAll();

            return View(ls);
        }
        public IActionResult Getsomeproduct()
        {
            List<Supplier> ls = SupplierRepository.GetAll();

            return View(ls);
        }
        public IActionResult GetProductsBysupplier(int id)
        {

            //List<Supplier> ls = SupplierRepository.GetAll();
            List<Produc_Supplier> ls = context.Produc_Suppliers.Include("Product").Include("Category").Include("SubCategory").Where(e => e.SupplierId == id).ToList();
            return View(ls);
        }

    }
}

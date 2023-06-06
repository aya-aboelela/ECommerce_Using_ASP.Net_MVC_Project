using Microsoft.AspNetCore.Mvc;
using MVCProject.Models;
using MVCProject.Repository;
using MVCProject.ViewModel;

namespace MVCProject.Controllers
{
	public class OrderController : Controller
	{
		IOrderRepository order;
        Context context = new Context();

        public OrderController(IOrderRepository orderRepository)
		{
			order = orderRepository;
		}


		[HttpGet]
		public IActionResult AddOrder(int id)
		{
			//ViewData["dev"] = order.GetAllDelivery();
			return View(new Order());
		}

		[HttpPost]
		public IActionResult Save(Order newOrder)
		 { 
			if (ModelState.IsValid)
			{
				order.Insert(newOrder);
				return RedirectToAction("AddOrderDetails",new { id=newOrder.Id });
			}
			else
			{ return View("AddOrder",newOrder); }
			
		}

        //[HttpGet]
        //public IActionResult Save()
        //{
        //        return RedirectToAction("AddOrderDetails");
        //}


        public IActionResult AddOrderDetails(int id)
		{
			//ViewData["dev"] = order.GetAllDelivery();
		    Order od=order.GetById(id);
			return View(od);
		}


    }
}

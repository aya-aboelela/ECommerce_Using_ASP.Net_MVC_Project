using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.EntityFrameworkCore;
using MVCProject.Models;
using MVCProject.ViewModel;


namespace MVCProject.Repository
{
	public class OrderRepository:IOrderRepository
	{
		Context context;
		public OrderRepository(Context _context)
		{
			context = _context;
		}
		public List<Order> GetAll()
		{
			
		    List<Order> orders = context.Orders.ToList();
			return orders;
		}

	   public Order GetById(int id)
		{
            Order order =context.Orders.FirstOrDefault(o => o.Id == id);
			return order;
		}
		public void Update(Order order, int id)
		{
			Order orderld = context.Orders.FirstOrDefault(order => order.Id == id);
			orderld.StreetAddress = order.StreetAddress;
			orderld.ShipDate = order.ShipDate;
			orderld.Date= order.Date;
			orderld.Email = order.Email;
			orderld.FirstName = order.FirstName;
			orderld.LastName = order.LastName;
			orderld.Phone= order.Phone;
			context.SaveChanges();

		}
		public void Delete(int id)
		{
			Order order = context.Orders.FirstOrDefault(order => order.Id == id);

            context.Orders.Remove(order);
			context.SaveChanges();
		}
		public void Insert(Order order)
		{
			context.Orders.Add(order);
			context.SaveChanges();
		}
		public  List<Delivery> GetAllDelivery()
		{
			return context.Delivery.ToList();
		}


	}
}

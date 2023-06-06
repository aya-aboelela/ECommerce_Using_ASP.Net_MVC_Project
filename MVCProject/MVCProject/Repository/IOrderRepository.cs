using MVCProject.Models;
using MVCProject.ViewModel;

namespace MVCProject.Repository
{
	public interface IOrderRepository
	{
		List<Order> GetAll();
		Order GetById(int id);
		void Update(Order order,int id);
		void Delete(int id);
		void Insert(Order order);
		
		List<Delivery> GetAllDelivery();
	}
}

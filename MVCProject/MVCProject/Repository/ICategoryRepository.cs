using MVCProject.Models;

namespace MVCProject.Repository
{
	public interface ICategoryRepository
	{
		List<Category> GetAll();
		Category GetById(int id);
		void Insert(Category category);
		void Update(int id, Category category);
		void Delete(int id);

	}
}

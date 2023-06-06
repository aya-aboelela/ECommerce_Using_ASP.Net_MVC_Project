using MVCProject.Models;

namespace MVCProject.Repository
{
	public class CategoryRepository : ICategoryRepository
	{
		Context context;
		public CategoryRepository(Context context)
		{
			this.context = context;
		}
		public List<Category> GetAll()
		{
			return context.Categories.ToList();
		}
		public Category GetById(int id)
		{
			return context.Categories.FirstOrDefault(c => c.Id == id);
		}
		public void Insert(Category cat)
		{
			context.Categories.Add(cat);
			context.SaveChanges();
		}
		public void Update(int id, Category cat)
		{
			Category org = GetById(id);
			org.Name = cat.Name;
			org.Image = cat.Image;
			context.SaveChanges();
		}
		public void Delete(int id)
		{
			Category orgCat = GetById(id);
			context.Categories.Remove(orgCat);
			context.SaveChanges();
		}
	}
}
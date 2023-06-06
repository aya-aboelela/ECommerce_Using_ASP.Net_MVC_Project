using MVCProject.Models;

namespace MVCProject.Repository
{
	public class SubCategoryRepository : ISubCategoryRepository
	{
		Context context;
		public SubCategoryRepository(Context context)
		{
			this.context = context;
		}

		public List<SubCategory> GetAll()
		{
			return context.SubCategories.ToList();
		}

        public SubCategory GetById(int id)
        {

            return context.SubCategories.FirstOrDefault(e => e.Id == id);
        }
        public void Insert(SubCategory SubCategory)
        {

            context.SubCategories.Add(SubCategory);
            context.SaveChanges();
        }
        public void Update(int id, SubCategory SubCategory)
        {
            SubCategory orgEmp = GetById(id);

            orgEmp.Name = SubCategory.Name;
            orgEmp.Image = SubCategory.Image;
            orgEmp.CatId = SubCategory.CatId;
            context.SaveChanges();


        }
        public void Delete(int id)
        {

            SubCategory orgCat = GetById(id);
            context.SubCategories.Remove(orgCat);
            context.SaveChanges();
        }


        public List<SubCategory> GetSubCategoriesByCategoryId(int cateid)
		{
			return context.SubCategories.Where(e => e.CatId == cateid).ToList();
		}
	}
}


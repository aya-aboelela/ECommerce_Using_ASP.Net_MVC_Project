using MVCProject.Models;

namespace MVCProject.Repository
{
	public interface ISubCategoryRepository
	{
		List<SubCategory> GetAll();
       SubCategory GetById(int id);
        void Insert(SubCategory subCategory);
        void Update(int id,SubCategory subCategory);
        void Delete(int id);
        public List<SubCategory> GetSubCategoriesByCategoryId(int id);

	}
}

using MVCProject.Models;

namespace MVCProject.Repository
{
    public interface IProduct_SupplierRepository
    {
        List<Produc_Supplier> GetAll();
		List<Produc_Supplier> GetProductBySubCategoryId(int id);
		List<Produc_Supplier> GetProductByCategoryId(int id);
        List<Produc_Supplier> GetProductBySupplierId(int id);
		Produc_Supplier GetById(int id);
        void Insert(Produc_Supplier produc_Supplier);
        void Update(int id, Produc_Supplier produc_Supplier);
        void Delete(int id);
    }
}

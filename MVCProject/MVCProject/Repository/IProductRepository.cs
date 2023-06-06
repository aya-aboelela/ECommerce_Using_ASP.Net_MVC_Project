using MVCProject.Models;

namespace MVCProject.Repository
{
    public interface IProductRepository
    {
        List<Product> GetAll();
        Product GetById(int id);
        void Insert(Product  product);
        void Update(Product product, int id);
        void Delete(int id);
    }
}

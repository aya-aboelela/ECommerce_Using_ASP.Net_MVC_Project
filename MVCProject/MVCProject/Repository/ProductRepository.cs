using MVCProject.Models;

namespace MVCProject.Repository
{
    public class ProductRepository : IProductRepository
    {
        public Context context;

        public ProductRepository(Context context)
        {
            this.context = context;
        }

        //CRUD operations
        public List<Product> GetAll()
        {
            return context.Products.ToList();
        }

        public Product GetById(int id)
        {
            return context.Products.FirstOrDefault(e => e.Id == id);
        }

        public void Insert(Product product)
        {
            context.Products.Add(product);
            context.SaveChanges();
        }
        public void Update(Product product, int id)
        {
            Product pro = GetById(id);
            pro.Name = product.Name;
            context.SaveChanges();
        }
        public void Delete(int id)
        {
            Product product = GetById(id);
            context.Products.Remove(product);
            context.SaveChanges();
        }

    }
}

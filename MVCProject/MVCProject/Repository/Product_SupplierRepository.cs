using Microsoft.EntityFrameworkCore;
using MVCProject.Models;

namespace MVCProject.Repository
{
    public class Product_SupplierRepository : IProduct_SupplierRepository
    {
        public Context context;

        //public Guid Id { get; set; }
        public Product_SupplierRepository(Context context)
        {
            this.context = context;
            //Id = Guid.NewGuid();
        }

        //CRUD operations

        public List<Produc_Supplier> GetAll()
        {
            return context.Produc_Suppliers.Include("Product").Include("SubCategory").Include("Category").Include("Supplier").ToList();
        }

        public Produc_Supplier GetById(int id)
        {
            return context.Produc_Suppliers.Include("Product").FirstOrDefault(e => e.Id == id);
        }

        public void Insert(Produc_Supplier produc_Suppliers)
        {
            context.Produc_Suppliers.Add(produc_Suppliers);
            context.SaveChanges();
        }

        public void Update(int id, Produc_Supplier produc_Suppliers)
        {
            Produc_Supplier pro = GetById(id);
            //pro.Product.Name = produc_Suppliers.Product.Name;
            pro.Image = produc_Suppliers.Image;
            pro.Description = produc_Suppliers.Description;
            pro.Price = produc_Suppliers.Price;
            pro.Quantity = produc_Suppliers.Quantity;

            pro.CatId = produc_Suppliers.CatId;
            pro.SubCatId = produc_Suppliers.SubCatId;
            pro.SupplierId = produc_Suppliers.SupplierId;
            context.SaveChanges();
        }
        public void Delete(int id)
        {
            Produc_Supplier produc_Suppliers = GetById(id);
            context.Produc_Suppliers.Remove(produc_Suppliers);
            context.SaveChanges();
        }
        public List<Produc_Supplier> GetProductByCategoryId(int id)
        {
            return context.Produc_Suppliers.Where(e => e.CatId == id).ToList();
        }

        public List<Produc_Supplier> GetProductBySubCategoryId(int id)
        {
            return context.Produc_Suppliers.Include("Product").Include("SubCategory").Where(e => e.SubCatId == id).ToList();
        }

        public List<Produc_Supplier> GetProductBySupplierId(int id)
        {
            return context.Produc_Suppliers.Where(e => e.SupplierId == id).ToList();
        }
    }
}
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MVCProject.Models;

namespace MVCProject.Repository
{
    public class SupplierRepository : ISupplierRepository
    {
        public Context context;

        //public Guid Id { get; set; }
        public SupplierRepository(Context context)
        {
            this.context = context;
            //Id = Guid.NewGuid();
        }

        //CRUD operations
        public List<Supplier> Getsomeproduct()
        {
            return context.Suppliers.ToList();
        }
        public List<Supplier> GetAll()
        {
            return context.Suppliers.ToList();
        }
        public Supplier GetById(int id)
        {
            return context.Suppliers.FirstOrDefault(e => e.Id == id);
        }
        public void Insert(Supplier Supplier)
        {
            context.Suppliers.Add(Supplier);
            context.SaveChanges();
        }
        public void Update(int id,Supplier Supplier)
        {
            Supplier su = GetById(id);
            su.Name = Supplier.Name;
            su.Email = Supplier.Email;
            su.PhoneNumber = Supplier.PhoneNumber;
            su.Address= Supplier.Address;
            context.SaveChanges();
        }
        public void Delete(int id)
        {
            Supplier Supplier = GetById(id);
            context.Suppliers.Remove(Supplier);
            context.SaveChanges();
        }
    }
}

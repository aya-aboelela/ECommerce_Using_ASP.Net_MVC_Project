
using MVCProject.Models;

namespace MVCProject.Repository
{
    public interface ISupplierRepository
    {
        List<Supplier> GetAll();
        Supplier GetById(int id);
        void Insert(Supplier Supplier);
        void Update(int id, Supplier Supplier);
        void Delete(int id);
    }
}



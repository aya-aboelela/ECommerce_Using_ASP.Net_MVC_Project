using MVCProject.Models;
using MVCProject.Repository;
using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MVCProjectTesting
{
    [TestFixture]
    public class Product_SupplierRepositoryTest
    {

        Context context;

        [SetUp]
        public void SetUp()
        {
            context = new Context();
        }

        [Test]
        public void GetAllProduct_Supplier_CheckType()
        {
            Product_SupplierRepository Product_SupplierRepository = new Product_SupplierRepository(context);
            var result = Product_SupplierRepository.GetAll();
            Assert.That(result, Is.TypeOf<List<Produc_Supplier>>());
        }
        [Test]
        public void GetAllProduct_Supplier_Check_Has_Exactly_Items()
        {
            Product_SupplierRepository Product_SupplierRepository = new Product_SupplierRepository(context);
            var result = Product_SupplierRepository.GetAll();
            Assert.That(result, Is.Not.Null);
        }


        [Test]
        public void GetByIdProduct_Supplier_CheckType()
        {
            Product_SupplierRepository Product_SupplierRepository = new Product_SupplierRepository(context);
            var result = Product_SupplierRepository.GetById(1);
            Assert.That(result, Is.TypeOf<Produc_Supplier>());
        }
        [Test]
        public void GetByIdProduct_Supplier_Check_Not_NaN()
        {
            Product_SupplierRepository Product_SupplierRepository = new Product_SupplierRepository(context);
            var result = Product_SupplierRepository.GetById(1);
            Assert.That(result, Is.Not.NaN);
        }

        [Test]
        public void GetByIdProduct_Supplier_Check_Has_Property()
        {
            Product_SupplierRepository Product_SupplierRepository = new Product_SupplierRepository(context);
            var result = Product_SupplierRepository.GetById(1);
            Assert.That(result, Has.Property("Price"));
        }


    }
}

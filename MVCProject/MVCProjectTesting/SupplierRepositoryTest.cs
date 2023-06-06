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
    public class SupplierRepositoryTest
    {
        Context context;

        [SetUp]
        public void SetUp()
        {
            context = new Context();
        }

        [Test]
        public void GetAllSupplier_CheckType()
        {
            SupplierRepository SupplierRepository = new SupplierRepository(context);
            var result = SupplierRepository.GetAll();
            Assert.That(result, Is.TypeOf<List<Supplier>>());
        }

        [Test]
        public void GetAllSupplier_Check_Has_Exactly_Items()
        {
            SupplierRepository SupplierRepository = new SupplierRepository(context);
            var result = SupplierRepository.GetAll();
            Assert.That(result, Is.Not.Null);
        }


        [Test]
        public void GetByIdSupplier_CheckType()
        {
            SupplierRepository SupplierRepository = new SupplierRepository(context);
            var result = SupplierRepository.GetById(1);
            Assert.That(result, Is.TypeOf<Supplier>());
        }
        [Test]
        public void GetByIdSupplier_Check_Not_NaN()
        {
            SupplierRepository SupplierRepository = new SupplierRepository(context);
            var result = SupplierRepository.GetById(1);
            Assert.That(result, Is.Not.NaN);
        }

        [Test]
        public void GetByIdSupplier_Check_Has_Property()
        {
            SupplierRepository SupplierRepository = new SupplierRepository(context);
            var result = SupplierRepository.GetById(1);
            Assert.That(result, Has.Property("Name"));
        }
    }
}

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
    public class ProductRepositoryTest
    {
        Context context;

        [SetUp]
        public void SetUp()
        {
            context = new Context();
        }

        [Test]
        public void GetAllProduct_CheckType()
        {
            ProductRepository ProductRepository = new ProductRepository(context);
            var result = ProductRepository.GetAll();
            Assert.That(result, Is.TypeOf<List<Product>>());
        }
        [Test]
        public void GetAllProduct_Check_Has_Exactly_Items()
        {
            ProductRepository ProductRepository = new ProductRepository(context);
            var result = ProductRepository.GetAll();
            Assert.That(result, Is.Not.Null);
        }


        [Test]
        public void GetByIdProduct_CheckType()
        {
            ProductRepository ProductRepository = new ProductRepository(context);
            var result = ProductRepository.GetById(1);
            Assert.That(result, Is.TypeOf<Product>());
        }
        [Test]
        public void GetByIdProduct_Check_Not_NaN()
        {
            ProductRepository ProductRepository = new ProductRepository(context);
            var result = ProductRepository.GetById(1);
            Assert.That(result, Is.Not.NaN);
        }

        [Test]
        public void GetByIdProduct_Check_Has_Property()
        {
            ProductRepository ProductRepository = new ProductRepository(context);
            var result = ProductRepository.GetById(1);
            Assert.That(result, Has.Property("Name"));
        }

    }
}

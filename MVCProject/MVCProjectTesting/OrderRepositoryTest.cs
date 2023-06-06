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
    public class OrderRepositoryTest
    {
        Context context;

        [SetUp]
        public void SetUp()
        {
            context = new Context();
        }

        [Test]
        public void GetAllOrder_CheckType()
        {
            OrderRepository OrderRepository = new OrderRepository(context);
            var result = OrderRepository.GetAll();
            Assert.That(result, Is.TypeOf<List<Order>>());
        }
        [Test]
        public void GetAllOrder_Check_Has_Exactly_Items()
        {
            OrderRepository OrderRepository = new OrderRepository(context);
            var result = OrderRepository.GetAll();
            Assert.That(result, Is.Not.Null);
        }


        [Test]
        public void GetByIdOrder_CheckType()
        {
            OrderRepository OrderRepository = new OrderRepository(context);
            var result = OrderRepository.GetById(1);
            Assert.That(result, Is.TypeOf<Order>());
        }
        [Test]
        public void GetByIdOrder_Check_Not_NaN()
        {
            OrderRepository OrderRepository = new OrderRepository(context);
            var result = OrderRepository.GetById(1);
            Assert.That(result, Is.Not.NaN);
        }

        [Test]
        public void GetByIdOrder_Check_Has_Property()
        {
            OrderRepository OrderRepository = new OrderRepository(context);
            var result = OrderRepository.GetById(1);
            Assert.That(result, Has.Property("FirstName"));
        }


    }
}

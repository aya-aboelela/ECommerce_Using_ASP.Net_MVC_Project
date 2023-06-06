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
    public class CartRepositoryTest
    {
        Context context;

        [SetUp]
        public void SetUp()
        {
            context = new Context();
        }

        [Test]
        public void GetAllCart_CheckType()
        {
            CartRepository CartRepository = new CartRepository(context);
            var result = CartRepository.GetCartItems();
            Assert.That(result, Is.TypeOf<List<Produc_Supplier>>());
        }

        [Test]
        public void GetByIdCart_Check_Not_NaN()
        {
            CartRepository CartRepository = new CartRepository(context);
            var result = CartRepository.GetCartId(1);
            Assert.That(result, Is.Not.NaN);
        }


    }
}

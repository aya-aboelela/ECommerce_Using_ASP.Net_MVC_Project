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
    public class SubCategoryRepositoryTest
    {
        Context context;

        [SetUp]
        public void SetUp()
        {
            context = new Context();
        }

        [Test]
        public void GetAllSubCategory_CheckType()
        {
            SubCategoryRepository SubCategoryRepository = new SubCategoryRepository(context);
            var result = SubCategoryRepository.GetAll();
            Assert.That(result, Is.TypeOf<List<SubCategory>>());
        }

        [Test]
        public void GetAllSubCategory_Check_Has_Exactly_Items()
        {
            SubCategoryRepository SubCategoryRepository = new SubCategoryRepository(context);
            var result = SubCategoryRepository.GetAll();
            Assert.That(result, Is.Not.Null);
        }


        [Test]
        public void GetByIdSubCategory_CheckType()
        {
            SubCategoryRepository SubCategoryRepository = new SubCategoryRepository(context);
            var result = SubCategoryRepository.GetById(1);
            Assert.That(result, Is.TypeOf<SubCategory>());
        }
        [Test]
        public void GetByIdSubCategory_Check_Not_NaN()
        {
            SubCategoryRepository SubCategoryRepository = new SubCategoryRepository(context);
            var result = SubCategoryRepository.GetById(1);
            Assert.That(result, Is.Not.NaN);
        }

        [Test]
        public void GetByIdSubCategory_Check_Has_Property()
        {
            SubCategoryRepository SubCategoryRepository = new SubCategoryRepository(context);
            var result = SubCategoryRepository.GetById(1);
            Assert.That(result, Has.Property("Name"));
        }
    }
}

using MVCProject.Models;
using MVCProject.Repository;
using NUnit.Framework;

namespace MVCProjectTesting
{
    [TestFixture]
    public class CategoryRepositoryTest
    {
        Context context;

        [SetUp]
        public void SetUp()
        {
            context = new Context();
        }

        [Test]
        public void GetAllCategory_CheckType()
        {
            CategoryRepository categoryRepository = new CategoryRepository(context);
            var result = categoryRepository.GetAll();
            Assert.That(result, Is.TypeOf<List<Category>>());
        }
        [Test]
        public void GetAllCategory_Check_Has_Exactly_Items()
        {
            CategoryRepository categoryRepository = new CategoryRepository(context);
            var result = categoryRepository.GetAll();
            Assert.That(result, Has.Exactly(4).Items);
        }

        [Test]
        public void GetByIdCategory_CheckNotNull()
        {
            CategoryRepository categoryRepository = new CategoryRepository(context);
            var result = categoryRepository.GetById(1);
            Assert.That(result, Is.Not.Null);
        }

        [Test]
        public void GetByIdCategory_CheckType()
        {
            CategoryRepository categoryRepository = new CategoryRepository(context);
            var result = categoryRepository.GetById(1);
            Assert.That(result, Is.TypeOf<Category>());
        }
        [Test]
        public void GetByIdCategory_Check_Not_NaN()
        {
            CategoryRepository categoryRepository = new CategoryRepository(context);
            var result = categoryRepository.GetById(1);
            Assert.That(result,Is.Not.NaN);    
        }

        [Test]
        public void GetByIdCategory_Check_Has_Property()
        {
            CategoryRepository categoryRepository = new CategoryRepository(context);
            var result = categoryRepository.GetById(1);
            Assert.That(result, Has.Property("Name"));
        }








    }
}

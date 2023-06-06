namespace MVCProject.Models
{
    public class Category
    {
       public int Id { get; set; }
        public string Name { get; set; }

        public string Image{ get; set; }

        public virtual List<SubCategory> SubCategories { get; set; }
		public virtual List<Produc_Supplier> Produc_Suppliers { get; set; }

	}
}

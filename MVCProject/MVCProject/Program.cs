using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using MVCProject.Hubs;
using MVCProject.Models;
using MVCProject.Repository;

namespace MVCProject
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            //SignalR
            builder.Services.AddSignalR();  //register to any hub

            // injection
            builder.Services.AddDbContext<Context>(option =>
            {
                option.UseSqlServer(builder.Configuration.GetConnectionString("DB"));
            });

            builder.Services.AddIdentity<ApplicationUser, IdentityRole>(options =>
            {
                options.Password.RequireNonAlphanumeric = false;
                options.Password.RequireUppercase = false;
                options.Password.RequireDigit = false;
            }
             ).AddEntityFrameworkStores<Context>();

            builder.Services.AddScoped<IProduct_SupplierRepository, Product_SupplierRepository>();//register 
            builder.Services.AddScoped<IProductRepository, ProductRepository>();
            builder.Services.AddScoped<ICategoryRepository, CategoryRepository>();//register 
            builder.Services.AddScoped<ISubCategoryRepository, SubCategoryRepository>();
            builder.Services.AddScoped<ISupplierRepository, SupplierRepository>();
            builder.Services.AddScoped<ICartRepository, CartRepository>();
			builder.Services.AddScoped<IOrderRepository, OrderRepository>();



			builder.Services.AddCors(//built in service need register
               options =>

                   options.AddDefaultPolicy(cong => {
                       cong.AllowAnyMethod().
                       SetIsOriginAllowed((host) => true)
                       .AllowAnyHeader()
                       .AllowCredentials();
                   })
               );

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
            }
            app.UseStaticFiles();

            app.UseRouting();

            app.UseCors();

            app.UseAuthorization();

            //SignalR  URL ===> hub 
            app.MapHub<ProductHub>("/ProductHub");


            app.MapControllerRoute(
               name: "default1",
               //pattern: "{controller=Home}/{action=Index}/{id?}");
		pattern: "{controller=Home}/{action=GOTO}/{id?}");

			//app.MapControllerRoute(
			//    name: "default",
			//    pattern: "{controller=ProductSupplier}/{action=Index}/{id?}");

			app.Run();
        }
    }
}